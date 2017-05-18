//
//  main.swift
//  swift-algorithm
//
//  Created by Dat on 5/17/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

import Foundation

//var list = LinkedList<Int>()
//list.append(1)
//list.append(2)
//list.insert(3, at: 1)
//list.insert(4, at: 1)
//let mapList = list.map { $0 + 1 }
//let filterList = list.filter { $0 > 2 }

//print(list.description)
//print(mapList.description)

//print(filterList.description)

//let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
//print(linearSearch(array: numbers, object: 43))
//print(binarySearch(array: numbers, object: 43, range: 0..<numbers.count))

//let a = [ 0, 1, 1, 3, 3, 3, 3, 6, 8, 10, 11, 11 ]
//print(countOccurrences(array: a, object: 30))

var numbers = [1, 4, 1, 0, 1, 9, 9, 7, 0]

print(insertionSort(numbers, >))
print(shellSort(numbers, >))
