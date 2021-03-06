//
//  BidirectionalCollection.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 5/3/21.
//

import Foundation

extension BidirectionalCollection where Element: StringProtocol {
    
    var serialized: String {
        
        count <= 2 ?
            joined(separator: " and ") :
            dropLast().joined(separator: ", ") + ", and " + last!
        
    }
}
