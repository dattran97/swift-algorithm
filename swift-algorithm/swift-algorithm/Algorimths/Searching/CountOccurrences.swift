//
//  CountOccurrences.swift
//  swift-algorithm
//
//  Created by Dat on 5/18/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

/*
 
 Require: Array must be sorted
 Description: Count how often a certain value appears in an array.
 Runs at: O(log n)
 
 */

func countOccurrences<T:Comparable>(array:[T], object:T) -> Int{
    func leftBoundary() -> Int{
        var lowerBound = 0
        var upperBound = array.count
        while lowerBound < upperBound{
            let midIndex = (lowerBound + upperBound) / 2
            if array[midIndex] < object{
                lowerBound = midIndex + 1
            }else{
                upperBound = midIndex
            }
        }
        return lowerBound
    }
    
    func rightBoundary() -> Int{
        var lowerBound = 0
        var upperBound = array.count
        while lowerBound < upperBound{
            let midIndex = (lowerBound + upperBound) / 2
            if array[midIndex] > object{
                upperBound = midIndex
            }else{
                lowerBound = midIndex + 1
            }
        }
        return upperBound
    }
    
    return rightBoundary() - leftBoundary()
}
