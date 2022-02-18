/*
 * SmallDenseDomainIntervalEnumeration.java
 * This file is part of JaCoP.
 * <p>
 * JaCoP is a Java Constraint Programming solver.
 * <p>
 * Copyright (C) 2000-2008 Krzysztof Kuchcinski and Radoslaw Szymanek
 * <p>
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * <p>
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * <p>
 * Notwithstanding any other provision of this License, the copyright
 * owners of this work supplement the terms of this License with terms
 * prohibiting misrepresentation of the origin of this work and requiring
 * that modified versions of this work be marked in reasonable ways as
 * different from the original version. This supplement of the license
 * terms is in accordance with Section 7 of GNU Affero General Public
 * License version 3.
 * <p>
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package org.jacop.core;

/**
 * Defines interval enumeration of small dense domain.
 *
 * @author Radoslaw Szymanek and Krzysztof Kuchcinski
 * @version 4.8
 */
public class SmallDenseDomainIntervalEnumeration extends IntervalEnumeration {

    int current;

    SmallDenseDomain domain;

    long bits;

    /**
     * It create an enumeration for a given domain.
     *
     * @param dom domain for which value enumeration is created.
     */
    public SmallDenseDomainIntervalEnumeration(SmallDenseDomain dom) {

        domain = dom;
        current = dom.min;
        bits = dom.bits;

    }

    @Override public boolean hasMoreElements() {
        return (bits != 0);
    }

    @Override public Interval nextElement() {

        if (bits == 0)
            throw new IllegalStateException("No more elements");

        while (bits > 0) {
            current++;
            bits = bits << 1;
        }

        int min = current;

        while (bits < 0) {
            current++;
            bits = bits << 1;
        }

        return new Interval(min, current - 1);

    }

}