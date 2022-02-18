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
package com.datastax.dse.driver.internal.core.data.geometry;

import com.datastax.dse.driver.api.core.data.geometry.Point;
import java.io.Serializable;

/**
 * A thin wrapper around {@link Distance}, that gets substituted during the serialization /
 * deserialization process. This allows {@link Distance} to be immutable and reference centers' OGC
 * counterpart.
 */
public class DistanceSerializationProxy implements Serializable {

  private static final long serialVersionUID = 1L;

  private final Point center;
  private final double radius;

  public DistanceSerializationProxy(Distance distance) {
    this.center = distance.getCenter();
    this.radius = distance.getRadius();
  }

  private Object readResolve() {
    return new Distance(center, radius);
  }
}
