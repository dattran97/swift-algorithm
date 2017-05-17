//
//  Stack.swift
//  swift-algorithm
//
//  Created by Dat on 5/17/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

struct Stack<T>{
    private var array = [T]()
    
    public var isEmpty:Bool {
        return array.isEmpty
    }
    
    public var count:Int {
        return array.count
    }
    
    public mutating func push(_ item:T){
        self.array.append(item)
    }
    
    public mutating func pop() -> T?{
        return self.array.popLast()
    }
}

