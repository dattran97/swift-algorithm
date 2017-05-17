//
//  LinkedList.swift
//  swift-algorithm
//
//  Created by Dat on 5/17/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

//MARK: - Enum linked list
enum ListNode<T> {
    indirect case node(T, next: ListNode<T>)
    case end
}

//MARK: - Linked list
class LinkedListNode<T>{
    var value:T
    var next:LinkedListNode<T>?
    weak var previous:LinkedListNode<T>?
    
    init(_ value:T) {
        self.value = value
    }
}

class LinkedList<T>{
    public typealias Node = LinkedListNode<T>
    private var head:Node?
    
    //MARK: - Properties
    public var isEmpty:Bool {
        return head == nil
    }
    
    public var first:Node?{
        return head
    }
    
    public var last:Node?{
        if var node = head{
            while case let next? = node.next{
                node = next
            }
            return node
        }else {
            return nil
        }
    }
    
    public var count:Int {
        if var node = head{
            var count = 1
            while let next = node.next{
                count = count + 1
                node = next
            }
            return count
        }
        return 0
    }
    
    public var description:String{
        var desc:String = "["
        var node = head
        while node != nil{
            desc = desc + "\(node!.value)"
            node = node!.next
            if node != nil{ desc = desc + ", " }
        }
        return desc + "]"
    }
    
    //MARK: - Methods
    public func append(_ value:T){
        let newNode = Node(value)
        if let lastNode = self.last{
            lastNode.next = newNode
            newNode.previous = lastNode
        }else{
            head = newNode
        }
    }
    
    public func insert(_ value:T, at index:Int = 0){
//        assert(index < count)
        let newNode = Node(value)
        if index == 0{
            if head != nil{
                head!.previous = newNode
                newNode.next = head
            }
            head = newNode
        }else{
            let cur = self.node(at: index)
            let prev = cur?.previous
            prev?.next = newNode
            cur?.previous = newNode
            newNode.next = cur
            newNode.previous = prev
        }
    }
    
    public func node(at index:Int) -> Node?{
        if index == 0{
            return head
        }else if index > 0{
            var node = head
            var count = 0
            while node != nil{
                if count == index { return node }
                count = count + 1
                node = node!.next
            }
        }
        return nil
    }
    
    public func removeAll(){
        head = nil
    }
    
    public func remove(node: Node) -> T{
        let prev:Node? = node.previous
        let next:Node? = node.next
        if prev == nil{
            head = next
        }else{
            prev?.next = next
        }
        next?.previous = prev
        node.previous = nil
        node.next = nil
        
        return node.value
    }
    
    public func removeLast() -> T?{
        if !isEmpty{
            return nil
        }
        return self.remove(node: last!)
    }
    
    public func remove(at index:Int) -> T?{
        guard let node = node(at: index) else { return nil }
        return self.remove(node: node)
    }
    
    public func reverse(){
        var node = head
        while let curNode = node{
            node = curNode.next
            swap(&curNode.next, &curNode.previous)
            head = curNode
        }
    }
    
    public func map<U>(transform: (T) -> U) -> LinkedList<U> {
        let result = LinkedList<U>()
        var node = head
        while node != nil{
            result.append(transform(node!.value))
            node = node?.next
        }
        return result
    }
    
    public func filter(predicate: (T) -> Bool) -> LinkedList<T>{
        let result = LinkedList<T>()
        var node = head
        while node != nil{
            if predicate(node!.value){
                result.append(node!.value)
            }
            node = node!.next
        }
        return result
    }
    
    //MARK: - Support methods
//    public func node(between index:Int) -> (Node?, Node?){
//        var count = 0
//        var next = head
//        var prev:Node?
//        while next != nil{
//            if count == index{
//                return (prev, next)
//            }
//            count = count + 1
//            next = next!.next
//            prev = next!
//        }
//        return (nil, nil)
////        if index > 0{
////            let node = self.node(at: index)
////            return (node?.previous, node?.next)
////        }
////        return (nil, nil)
}

