/*
 * Copyright 2002-2006,2009 The Apache Software Foundation.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.opensymphony.xwork2.config.providers;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * 
 * @author tm_jee
 * @version $Date$ $Id$
 */
public class InterceptorForTestPurpose implements Interceptor {

	private String paramOne;
	private String paramTwo;
	
	public String getParamOne() { return paramOne; }
	public void setParamOne(String paramOne) { this.paramOne = paramOne; }
	
	public String getParamTwo() { return paramTwo; }
	public void setParamTwo(String paramTwo) { this.paramTwo = paramTwo; }
	
	public void destroy() {
	}

	public void init() {
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		return invocation.invoke();
	}

}
