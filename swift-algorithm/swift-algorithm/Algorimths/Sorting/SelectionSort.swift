//
//  SelectionSort.swift
//  swift-algorithm
//
//  Created by Dat on 5/18/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

/*
 
 Require: N/A
 Description: Search through the rest of the array to select the next lowest number and append it into sorted part
 Runs at: O(n^2)
 Note: Worse than insertion sort but better than bubble sort
 
 */

func selectionSort<T: Comparable>(_ array:[T], _ isOrderedBefore: (T,T) -> Bool) -> [T]{
    guard array.count > 1 else { return array}
    var a = array
    for i in 0..<array.count - 1{
        var lowest = i
        for j in i + 1..<array.count{
            if !isOrderedBefore(a[lowest], a[j]){
                lowest = j
            }
        }
        if i != lowest{
            swap(&a[i], &a[lowest])
        }
    }
    return a
}
