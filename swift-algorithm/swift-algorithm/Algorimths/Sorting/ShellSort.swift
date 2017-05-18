//
//  ShellSort.swift
//  swift-algorithm
//
//  Created by Dat on 5/18/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

/*
 
 Require: N/A
 Description: Breaking the original list into smaller sublists which are then individually sorted using insertion sort.
 Runs at: O(n^2)
 Note: This algorithm produces an unstable sort. It may change the relative order of elements with equal values.
 
 */

func shellSort<T: Comparable>(_ array:[T], _ isOrderedBefore: (T,T) -> Bool) -> [T]{
    var sublistCount = array.count/2
    var a = array
    while sublistCount > 1{
        for var i in 0..<array.count - sublistCount{
            if !isOrderedBefore(a[i], a[i + sublistCount]){
                swap(&a[i], &a[i+sublistCount])
            }
            if sublistCount == 1 && i > 0 {
                while !isOrderedBefore(a[i-1], a[i]) && i - 1 > 0 {
                    swap(&a[i - 1], &a[i])
                    i = i - 1
                }
            }
        }
        sublistCount = sublistCount/2
    }
    return a
}
