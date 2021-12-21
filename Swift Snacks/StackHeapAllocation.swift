//
//  StackHeapAllocation.swift
//  
//
//  Created by MohamedRafat on 12/21/21.
//

import Foundation


class HeapAllocation {
    var areYouLiveInHeap: Bool = true
}

let ref = HeapAllocation() // HeapAllocation object is allocated in the heap but the reference to that object allocated in the stack (this makes the allocation is expensive)

struct StackAllocation{
    var areYouLiveInStack: Bool = true
}

let ref2 = StackAllocation() // StackAllocation object is allocated in the stack and its referece allocated in the stack. (this makes the allocation is cheap)


// If there is a situation that makes you create a property of struct type inside a class it is better to convert the struct to a class also.




