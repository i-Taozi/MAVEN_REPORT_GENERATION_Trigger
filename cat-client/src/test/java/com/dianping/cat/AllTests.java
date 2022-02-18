/*
 * Copyright (c) 2011-2018, Meituan Dianping. All Rights Reserved.
 *
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements. See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.dianping.cat;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.dianping.cat.message.EventTest;
import com.dianping.cat.message.HeartbeatTest;
import com.dianping.cat.message.TransactionTest;
import com.dianping.cat.message.internal.MessageIdFactoryTest;
import com.dianping.cat.message.internal.MockMessageBuilderTest;
import com.dianping.cat.message.internal.MultiThreadingTest;
import com.dianping.cat.servlet.CatFilterTest;

@RunWith(Suite.class)
@SuiteClasses({

/* .message */

						EventTest.class,

						HeartbeatTest.class,

						TransactionTest.class,

						MockMessageBuilderTest.class,

/* .servlet */
						CatFilterTest.class,

/* .tool */
						ToolsTest.class,

						CatTest.class,

						MessageIdFactoryTest.class,

						MockMessageBuilderTest.class,

						MultiThreadingTest.class

})
public class AllTests {

}