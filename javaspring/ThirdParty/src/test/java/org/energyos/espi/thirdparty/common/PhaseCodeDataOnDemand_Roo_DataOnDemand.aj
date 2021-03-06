/*******************************************************************************
 * Copyright (c) 2011, 2012 EnergyOS.Org
 *
 * Licensed by EnergyOS.Org under one or more contributor license agreements.
 * See the NOTICE file distributed with this work for additional information
 * regarding copyright ownership.  The EnergyOS.org licenses this file
 * to you under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License.  You may obtain a copy
 * of the License at:
 *  
 *   http://www.apache.org/licenses/LICENSE-2.0
 *  
 *  Unless required by applicable law or agreed to in writing,
 *  software distributed under the License is distributed on an
 *  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 *  KIND, either express or implied.  See the License for the
 *  specific language governing permissions and limitations
 *  under the License.
 *  
 ******************************************************************************
*/


// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.thirdparty.common;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.energyos.espi.thirdparty.common.PhaseCode;
import org.energyos.espi.thirdparty.common.PhaseCodeDataOnDemand;
import org.energyos.espi.thirdparty.common.PhaseCodeEnum;
import org.springframework.stereotype.Component;

privileged aspect PhaseCodeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PhaseCodeDataOnDemand: @Component;
    
    private Random PhaseCodeDataOnDemand.rnd = new SecureRandom();
    
    private List<PhaseCode> PhaseCodeDataOnDemand.data;
    
    public PhaseCode PhaseCodeDataOnDemand.getNewTransientPhaseCode(int index) {
        PhaseCode obj = new PhaseCode();
        setTypeMap(obj, index);
        setTypeValue(obj, index);
        return obj;
    }
    
    public void PhaseCodeDataOnDemand.setTypeMap(PhaseCode obj, int index) {
        Integer typeMap = new Integer(index);
        obj.setTypeMap(typeMap);
    }
    
    public void PhaseCodeDataOnDemand.setTypeValue(PhaseCode obj, int index) {
        PhaseCodeEnum typeValue = PhaseCodeEnum.class.getEnumConstants()[0];
        obj.setTypeValue(typeValue);
    }
    
    public PhaseCode PhaseCodeDataOnDemand.getSpecificPhaseCode(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        PhaseCode obj = data.get(index);
        Long id = obj.getId();
        return PhaseCode.findPhaseCode(id);
    }
    
    public PhaseCode PhaseCodeDataOnDemand.getRandomPhaseCode() {
        init();
        PhaseCode obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return PhaseCode.findPhaseCode(id);
    }
    
    public boolean PhaseCodeDataOnDemand.modifyPhaseCode(PhaseCode obj) {
        return false;
    }
    
    public void PhaseCodeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = PhaseCode.findPhaseCodeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'PhaseCode' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<PhaseCode>();
        for (int i = 0; i < 10; i++) {
            PhaseCode obj = getNewTransientPhaseCode(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
