//
//  LinearSearch.swift
//  swift-algorithm
//
//  Created by Dat on 5/17/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

/*
 
 Require: N/A
 Description: Iterate over all the objects in the array and compare each one to the 'search obj'
 Runs at: O(log n)
 
 */

func linearSearch<T: Comparable>(array:[T], object:T) -> Int?{
    for (index, item) in array.enumerated() where item == object{
        return index
    }
    return nil
}

