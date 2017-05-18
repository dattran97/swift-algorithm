//
//  InsertionSort.swift
//  swift-algorithm
//
//  Created by Dat on 5/18/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

/*
 
 Require: N/A
 Description: Take a number from the pile and insert it in the array in its proper sorted position.
 Runs at: O(n^2)
 Note:
  - Really fast if the array is already sorted
  - Worst-case and average case performance is O(n^2)
  - Very fast for sorting small arrays
 
 */

func insertionSort<T: Comparable>(_ array:[T], _ isOrderedBefore: (T,T) -> Bool) -> [T]{
    var a = array
    for i in 1..<a.count {
        var j = i
        let tmp = a[j]
        while j > 0 && isOrderedBefore(tmp, a[j-1]) {
            a[j] = a[j-1]
            j -= 1
        }
        a[j] = tmp
    }
    return a
}
