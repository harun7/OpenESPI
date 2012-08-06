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

import org.energyos.espi.thirdparty.common.AccumulationBehavior;
import org.energyos.espi.thirdparty.common.CPP;
import org.energyos.espi.thirdparty.common.Commodity;
import org.energyos.espi.thirdparty.common.ConsumptionTier;
import org.energyos.espi.thirdparty.common.Currency;
import org.energyos.espi.thirdparty.common.DataQualifier;
import org.energyos.espi.thirdparty.common.DirectionOfFlow;
import org.energyos.espi.thirdparty.common.Kind;
import org.energyos.espi.thirdparty.common.PhaseCode;
import org.energyos.espi.thirdparty.common.RationalNumber;
import org.energyos.espi.thirdparty.common.ReadingInterharmonic;
import org.energyos.espi.thirdparty.common.ReadingType;
import org.energyos.espi.thirdparty.common.TOU;
import org.energyos.espi.thirdparty.common.TimeAttribute;
import org.energyos.espi.thirdparty.common.UnitMultiplier;
import org.energyos.espi.thirdparty.common.UnitSymbol;

privileged aspect ReadingType_Roo_JavaBean {
    
    public AccumulationBehavior ReadingType.getAccumulationBehavior() {
        return this.accumulationBehavior;
    }
    
    public void ReadingType.setAccumulationBehavior(AccumulationBehavior accumulationBehavior) {
        this.accumulationBehavior = accumulationBehavior;
    }
    
    public Commodity ReadingType.getCommodity() {
        return this.commodity;
    }
    
    public void ReadingType.setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }
    
    public DataQualifier ReadingType.getDataQualifier() {
        return this.dataQualifier;
    }
    
    public void ReadingType.setDataQualifier(DataQualifier dataQualifier) {
        this.dataQualifier = dataQualifier;
    }
    
    public DirectionOfFlow ReadingType.getFlowDirection() {
        return this.flowDirection;
    }
    
    public void ReadingType.setFlowDirection(DirectionOfFlow flowDirection) {
        this.flowDirection = flowDirection;
    }
    
    public Integer ReadingType.getIntervalLength() {
        return this.intervalLength;
    }
    
    public void ReadingType.setIntervalLength(Integer intervalLength) {
        this.intervalLength = intervalLength;
    }
    
    public Kind ReadingType.getKind() {
        return this.kind;
    }
    
    public void ReadingType.setKind(Kind kind) {
        this.kind = kind;
    }
    
    public PhaseCode ReadingType.getPhase() {
        return this.phase;
    }
    
    public void ReadingType.setPhase(PhaseCode phase) {
        this.phase = phase;
    }
    
    public UnitMultiplier ReadingType.getPowerOfTenMultiplier() {
        return this.powerOfTenMultiplier;
    }
    
    public void ReadingType.setPowerOfTenMultiplier(UnitMultiplier powerOfTenMultiplier) {
        this.powerOfTenMultiplier = powerOfTenMultiplier;
    }
    
    public TimeAttribute ReadingType.getTimeAttribute() {
        return this.timeAttribute;
    }
    
    public void ReadingType.setTimeAttribute(TimeAttribute timeAttribute) {
        this.timeAttribute = timeAttribute;
    }
    
    public UnitSymbol ReadingType.getUom() {
        return this.uom;
    }
    
    public void ReadingType.setUom(UnitSymbol uom) {
        this.uom = uom;
    }
    
    public ConsumptionTier ReadingType.getConsumptionTier() {
        return this.consumptionTier;
    }
    
    public void ReadingType.setConsumptionTier(ConsumptionTier consumptionTier) {
        this.consumptionTier = consumptionTier;
    }
    
    public CPP ReadingType.getCpp() {
        return this.cpp;
    }
    
    public void ReadingType.setCpp(CPP cpp) {
        this.cpp = cpp;
    }
    
    public Currency ReadingType.getCurrency() {
        return this.currency;
    }
    
    public void ReadingType.setCurrency(Currency currency) {
        this.currency = currency;
    }
    
    public ReadingInterharmonic ReadingType.getInterharmonic() {
        return this.interharmonic;
    }
    
    public void ReadingType.setInterharmonic(ReadingInterharmonic interharmonic) {
        this.interharmonic = interharmonic;
    }
    
    public TimeAttribute ReadingType.getMeasuringPeriod() {
        return this.measuringPeriod;
    }
    
    public void ReadingType.setMeasuringPeriod(TimeAttribute measuringPeriod) {
        this.measuringPeriod = measuringPeriod;
    }
    
    public TOU ReadingType.getTou() {
        return this.tou;
    }
    
    public void ReadingType.setTou(TOU tou) {
        this.tou = tou;
    }
    
    public DataQualifier ReadingType.getAggregate() {
        return this.aggregate;
    }
    
    public void ReadingType.setAggregate(DataQualifier aggregate) {
        this.aggregate = aggregate;
    }
    
    public RationalNumber ReadingType.getArgument() {
        return this.argument;
    }
    
    public void ReadingType.setArgument(RationalNumber argument) {
        this.argument = argument;
    }
    
}