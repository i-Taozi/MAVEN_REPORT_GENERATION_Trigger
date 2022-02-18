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
 *  Copyright (c) 2011, Michael Bedward. All rights reserved. 
 *   
 *  Redistribution and use in source and binary forms, with or without modification, 
 *  are permitted provided that the following conditions are met: 
 *   
 *  - Redistributions of source code must retain the above copyright notice, this  
 *    list of conditions and the following disclaimer. 
 *   
 *  - Redistributions in binary form must reproduce the above copyright notice, this 
 *    list of conditions and the following disclaimer in the documentation and/or 
 *    other materials provided with the distribution.   
 *   
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
 *  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
 *  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
 *  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR 
 *  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
 *  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON 
 *  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
 *  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
 */   

package it.geosolutions.jaiext.jiffle;

import java.util.Map;

import it.geosolutions.jaiext.jiffle.runtime.AbstractJiffleRuntime;
import it.geosolutions.jaiext.jiffle.runtime.CoordinateTransform;
import it.geosolutions.jaiext.jiffle.runtime.JiffleIndirectRuntime;
import it.geosolutions.jaiext.jiffle.runtime.JiffleRuntime;


/**
 * A mock base class for indirect evaluation used for unit testing.
 * 
 * @author Michael Bedward
 * @since 0.1
 * @version $Id$
 */
public abstract class MockIndirectBaseClass 
        extends AbstractJiffleRuntime implements JiffleIndirectRuntime {


    public MockIndirectBaseClass(String[] variables) {
        super(variables);
    }

    public void setSourceImage(String imageName) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public void setSourceImage(String varName, CoordinateTransform tr) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public void setDestinationImage(String imageName) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public void setDestinationImage(String varName, CoordinateTransform tr) {
        throw new UnsupportedOperationException("Should not be called");
    }
    
    public void setDefaultBounds() {
        
    }

    @Override
    public void setDestinationBands(Map<String, Integer> destinationBands) {
        
    }

    @Override
    public int getOutputBands() {
        return JiffleRuntime.DYNAMIC_BANDS;
    }
}
