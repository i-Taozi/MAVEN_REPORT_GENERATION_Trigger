/* JAI-Ext - OpenSource Java Advanced Image Extensions Library
 *    http://www.geo-solutions.it/
 *    Copyright 2018 GeoSolutions
 *    
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


/*
 * Copyright (c) 2018, Michael Bedward. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 * - Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package it.geosolutions.jaiext.jiffle.parser.node;

import java.util.Objects;

import it.geosolutions.jaiext.jiffle.parser.JiffleType;

/**
 *
 * @author michael
 */
public class GetSourceValue extends Expression {
    private static String fmt = "readFromImage(%s,%s)";
    
    private final String varName;
    private final ImagePos pos;
    private String variableName;

    public GetSourceValue(String varName, ImagePos pos) {
        super(JiffleType.D);
        this.varName = varName;
        this.pos = pos;
    }

    @Override
    public JiffleType getType() {
        return JiffleType.D;
    }

    @Override
    public String toString() {
        return String.format(fmt, varName, pos);
    }

    public void write(SourceWriter w) {
        if (variableName != null) {
            w.append(variableName);
        } else if (w.isInternalBaseClass()) {
            w.append("s_").append(varName).append(".read(").append(pos).append(")");
        } else {
            w.append("readFromImage(\"").append(varName).append("\", ").append(pos).append(")");                
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        GetSourceValue that = (GetSourceValue) o;
        return Objects.equals(varName, that.varName) &&
                Objects.equals(pos, that.pos);
    }

    @Override
    public int hashCode() {

        return Objects.hash(super.hashCode(), varName, pos);
    }

    /**
     * The variable name
     * @return
     */
    public String getVarName() {
        return varName;
    }

    /**
     * The image position being read
     * @return
     */
    public ImagePos getPos() {
        return pos;
    }

    public void setVariableName(String variableName) {
        this.variableName = variableName;
    }
}
