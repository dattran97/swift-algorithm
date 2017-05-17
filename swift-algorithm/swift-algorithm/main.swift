//
//  main.swift
//  swift-algorithm
//
//  Created by Dat on 5/17/17.
//  Copyright © 2017 MBIs. All rights reserved.
//

import Foundation

var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.insert(3, at: 1)
list.insert(4, at: 1)
let mapList = list.map { $0 + 1 }
let filterList = list.filter { $0 > 2 }

print(list.description)
print(mapList.description)
print(filterList.description)
