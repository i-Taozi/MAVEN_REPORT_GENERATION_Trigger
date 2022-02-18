/*
 * Copyright (c) 2009-2016 Matthew R. Harrah
 *
 * MIT License
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */
package org.gedcom4j.exception;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Test;

/**
 * Test for {@link WriterCancelledException}
 * 
 * @author frizbog1
 */
@SuppressWarnings("PMD.AvoidThrowingRawExceptionTypes")
public class WriterCancelledExceptionTest {

    /**
     * Value for exception message
     */
    private static final String TEST_STRING = "Foo Bar Baz Bat";

    /**
     * Test method for {@link WriterCancelledException#WriterCancelledException()} .
     */
    @Test
    public void testWriterCancelledException() {
        try {
            throw new WriterCancelledException();
        } catch (WriterCancelledException e) {
            assertNotNull(e);
            assertNull(e.getMessage());
            assertNull(e.getCause());
        }
    }

    /**
     * Test method for {@link WriterCancelledException#WriterCancelledException(java.lang.String)} .
     */
    @Test
    public void testWriterCancelledExceptionString() {
        try {
            throw new WriterCancelledException(TEST_STRING);
        } catch (WriterCancelledException e) {
            assertNotNull(e);
            assertEquals(TEST_STRING, e.getMessage());
            assertNull(e.getCause());
        }
    }

    /**
     * Test method for {@link WriterCancelledException#WriterCancelledException(java.lang.String, java.lang.Throwable)} .
     */
    @Test
    public void testWriterCancelledExceptionStringThrowable() {
        try {
            throw new WriterCancelledException(new RuntimeException());
        } catch (WriterCancelledException e) {
            assertNotNull(e);
            assertEquals("java.lang.RuntimeException", e.getMessage());
            assertNotNull(e.getCause());
        }
    }

    /**
     * Test method for {@link WriterCancelledException#WriterCancelledException(java.lang.Throwable)} .
     */
    @Test
    public void testWriterCancelledExceptionThrowable() {
        try {
            throw new WriterCancelledException(TEST_STRING, new RuntimeException());
        } catch (WriterCancelledException e) {
            assertNotNull(e);
            assertEquals(TEST_STRING, e.getMessage());
            assertNotNull(e.getCause());
        }
    }

}
