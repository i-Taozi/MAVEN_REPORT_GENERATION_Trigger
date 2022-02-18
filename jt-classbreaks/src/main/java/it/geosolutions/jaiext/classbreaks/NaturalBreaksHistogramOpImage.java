/* JAI-Ext - OpenSource Java Advanced Image Extensions Library
 *    http://www.geo-solutions.it/
 *    Copyright 2018 GeoSolutions
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at

 * http://www.apache.org/licenses/LICENSE-2.0

 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/*
 *    GeoTools - The Open Source Java GIS Toolkit
 *    http://geotools.org
 *
 *    (C) 2018, Open Source Geospatial Foundation (OSGeo)
 *
 *    This library is free software; you can redistribute it and/or
 *    modify it under the terms of the GNU Lesser General Public
 *    License as published by the Free Software Foundation;
 *    version 2.1 of the License.
 *
 *    This library is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *    Lesser General Public License for more details.
 */
package it.geosolutions.jaiext.classbreaks;

import it.geosolutions.jaiext.classbreaks.HistogramClassification.Bucket;

import javax.media.jai.ROI;
import java.awt.image.RenderedImage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.TreeSet;

/**
 * Classification op for the natural breaks method.
 */
public class NaturalBreaksHistogramOpImage extends ClassBreaksOpImage {

    int numBins;

    public NaturalBreaksHistogramOpImage(
            RenderedImage image,
            Integer numClasses,
            Double[][] extrema,
            ROI roi,
            Integer[] bands,
            Integer xStart,
            Integer yStart,
            Integer xPeriod,
            Integer yPeriod,
            Double noData,
            int numBins,
            Boolean percentages) {
        super(image, numClasses, extrema, roi, bands, xStart, yStart, xPeriod, yPeriod, noData, percentages);
        this.numBins = numBins;
    }

    @Override
    protected Classification createClassification() {
        return new HistogramClassification(bands.length, extrema, numBins);
    }

    @Override
    protected void handleValue(double d, Classification c, int band) {
        ((HistogramClassification) c).count(d, band);
    }

    @Override
    protected void postCalculate(Classification c, int band) {
        HistogramClassification hc = (HistogramClassification) c;
        List<Bucket> buckets = hc.getBuckets(band);

        final int k = numClasses;
        final int m = buckets.size();
        TreeSet<Double> breaks = new TreeSet<Double>();
        if (k >= m) {
            Double[] arrBreaks = new Double[m + 1];
            // just return all the values
            for (int i = 0; i < m; i++) {
                arrBreaks[i] = buckets.get(i).getMin();
            }
            arrBreaks[m] = buckets.get(m - 1).getMax();
            c.setBreaks(band, arrBreaks);
            setPercentages(k, arrBreaks.length, buckets, Arrays.asList(arrBreaks), c);
            return;
        }

        int[][] iwork = new int[m + 1][k + 1];
        double[][] work = new double[m + 1][k + 1];

        for (int j = 1; j <= k; j++) {
            // the first item is always in the first class!
            iwork[0][j] = 1;
            iwork[1][j] = 1;
            // initialize work matirix
            work[1][j] = 0;
            for (int i = 2; i <= m; i++) {
                work[i][j] = Double.MAX_VALUE;
            }
        }

        // calculate the class for each data item
        for (int i = 1; i <= m; i++) {
            // sum of data values
            double s1 = 0;
            // sum of squares of data values
            double s2 = 0;

            double var = 0.0;
            int totalCount = 0;
            // consider all the previous values
            for (int ii = 1; ii <= i; ii++) {
                // index in to sorted data array
                int i3 = i - ii + 1;
                // remember to allow for 0 index
                Bucket bucket = buckets.get(i3 - 1);
                double average = bucket.getAverage();
                int count = bucket.getCount();
                // double squaredSum = bucket.getSquaredSum();
                // update running totals
                // ... adding the sum of all squares contained in the bucket
                s2 = s2 + (average * average * count);
                // ... adding the sum of all values contained in the bucket
                s1 += average * count;
                totalCount += count;
                double s0 = totalCount;
                // calculate (square of) the variance
                // (http://secure.wikimedia.org/wikipedia/en/wiki/Standard_deviation#Rapid_calculation_methods)
                var = s2 - ((s1 * s1) / s0);
                // System.out.println(s0+" "+s1+" "+s2);
                // System.out.println(i+","+ii+" var "+var);
                int ik = i3 - 1;
                if (ik != 0) {
                    // not the last value
                    for (int j = 2; j <= k; j++) {
                        // for each class compare current value to var + previous value
                        // System.out.println("\tis "+work[i][j]+" >= "+(var + work[ik][j - 1]));
                        if (work[i][j] >= (var + work[ik][j - 1])) {
                            // if it is greater or equal update classification
                            iwork[i][j] = i3 - 1;
                            // System.out.println("\t\tiwork["+i+"]["+j+"] = "+i3);
                            work[i][j] = var + work[ik][j - 1];
                        }
                    }
                }
            }
            // store the latest variance!
            iwork[i][1] = 1;
            work[i][1] = var;
        }

        // go through matrix and extract class breaks
        int ik = m - 1;
        breaks.add(buckets.get(ik).getMax());
        for (int j = k; j >= 2; j--) {
            int id =
                    (int) iwork[ik][j] - 1; // subtract one as we want inclusive breaks on the left?
            breaks.add(buckets.get(id).getAverage());
            ik = (int) iwork[ik][j] - 1;
        }
        breaks.add(buckets.get(0).getMin());
        int breaksSize = breaks.size();
        hc.setBreaks(band, breaks.toArray(new Double[breaksSize]));
        setPercentages(k, breaksSize, buckets, new ArrayList<>(breaks), hc);
    }

    private void setPercentages(int k, int breaksSize, List<Bucket> buckets, List<Double> breaks, Classification hc) {
        if (percentages.booleanValue()) {
            int actualClassNumber = k >= breaksSize ? breaksSize - 1 : k;
            ClassPercentagesManager percentagesManager = new ClassPercentagesManager();
            double[] percentages = percentagesManager.getPercentages(buckets, new ArrayList<>(breaks), actualClassNumber);
            hc.setPercentages(percentages);
        }
    }


}
