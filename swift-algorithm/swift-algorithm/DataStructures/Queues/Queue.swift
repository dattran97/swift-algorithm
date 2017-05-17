//
//  Queue.swift
//  swift-algorithm
//
//  Created by Dat on 5/17/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

struct Queue<T>{
    private var array = [T?]()
    private var head:Int = 0
    
    public var isEmpty:Bool {
        return (count == 0)
    }
    
    public var count:Int {
        return array.count - head
    }
    
    public var front:T? {
        if self.isEmpty{
            return nil
        }
        return array[head]
    }
    
    public mutating func enqueue(_ item:T){
        self.array.append(item)
    }
    
    public mutating func dequeue() -> T?{
        //        if self.array.isEmpty{
        //            return nil
        //        }
        //        return self.array.removeFirst()
        guard head < array.count, let element = array[head] else { return nil }
        array[head] = nil
        head = head + 1
        if array.count > 100 && Double(head / array.count) > 0.5{
            array.removeFirst(head)
            head = 0
        }
        return element
    }
}
