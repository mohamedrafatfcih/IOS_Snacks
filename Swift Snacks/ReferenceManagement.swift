//
//  ReferenceManagement.swift
//
//
//  Created by MohamedRafat on 12/7/21.
//

import Foundation

// Reference Cycles or Retain Cycles

class FirstClass {
    var secondClassRef: SecondClass?
}

class SecondClass{
    var firstClassRef: FirstClass?
}

var firstClass = FirstClass()
var secondClass = SecondClass()
firstClass.secondClassRef = secondClass
secondClass.firstClassRef = firstClass  // The cycle is completed.
/*
 
    - The instances cycle will remain in the memory and can't be de-allocated automatically untill the application is terminated.

    - To break this cycle you have to make one of those references weak or unowned because they not increase the reference counter so the ARC not consider this as a cycle.
 
 */

// Example for that broken cycle.
class Metro{
    var driverRef: Driver?
}

class Driver{
    weak var metroRef: Metro?
}

var metro: Metro? = Metro()
var driver: Driver? = Driver()
metro?.driverRef = driver
driver?.metroRef = metro     // Cycle not completed.

// Easy & automatic distroy if not needed.
metro = nil
driver = nil
