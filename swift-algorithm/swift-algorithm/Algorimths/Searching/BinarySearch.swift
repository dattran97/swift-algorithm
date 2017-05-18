//
//  BinarySearch.swift
//  swift-algorithm
//
//  Created by Dat on 5/17/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

/*
 
 Require: Array must be sorted
 Description: Split the array in half and determine 'search obj' is in the left half or in the right half.
 Runs at: O(log n)
 
 */

//Recursive
func binarySearch<T:Comparable>(array:[T], object:T, range: Range<Int>) -> Int?{
    if range.lowerBound >= range.upperBound{
        return nil
    }
    
    let midIndex = (range.lowerBound + range.upperBound) / 2
    
    if array[midIndex] > object{
        return binarySearch(array: array, object: object, range: range.lowerBound..<midIndex)
    }else if array[midIndex] < object{
        return binarySearch(array: array, object: object, range: midIndex + 1..<range.upperBound)
    }else{
        return midIndex
    }
}

//Iterative
func binarySearch<T: Comparable>(array: [T], object: T) -> Int? {
    var lowerBound = 0
    var upperBound = array.count
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if array[midIndex] == object {
            return midIndex
        } else if array[midIndex] < object {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}
