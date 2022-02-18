/*
 * Copyright DataStax, Inc.
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
package com.datastax.oss.driver.internal.core.metadata.token;

import com.datastax.oss.driver.api.core.metadata.token.Token;
import com.datastax.oss.driver.shaded.guava.common.base.Preconditions;
import com.datastax.oss.driver.shaded.guava.common.primitives.UnsignedBytes;
import com.datastax.oss.protocol.internal.util.Bytes;
import edu.umd.cs.findbugs.annotations.NonNull;
import java.nio.ByteBuffer;
import net.jcip.annotations.Immutable;

/** A token generated by {@code ByteOrderedPartitioner}. */
@Immutable
public class ByteOrderedToken implements Token {

  private final ByteBuffer value;

  public ByteOrderedToken(@NonNull ByteBuffer value) {
    this.value = ByteBuffer.wrap(Bytes.getArray(value)).asReadOnlyBuffer();
  }

  @NonNull
  public ByteBuffer getValue() {
    return value;
  }

  @Override
  public boolean equals(Object other) {
    if (other == this) {
      return true;
    } else if (other instanceof ByteOrderedToken) {
      ByteOrderedToken that = (ByteOrderedToken) other;
      return this.value.equals(that.getValue());
    } else {
      return false;
    }
  }

  @Override
  public int hashCode() {
    return value.hashCode();
  }

  @Override
  public int compareTo(@NonNull Token other) {
    Preconditions.checkArgument(
        other instanceof ByteOrderedToken, "Can only compare tokens of the same type");
    return UnsignedBytes.lexicographicalComparator()
        .compare(Bytes.getArray(value), Bytes.getArray(((ByteOrderedToken) other).value));
  }

  @Override
  public String toString() {
    return "ByteOrderedToken(" + Bytes.toHexString(value) + ")";
  }
}
