//
//  Animal.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 5/3/21.
//

import Foundation

struct Animal: Identifiable, Decodable {
    
    var id: Int
    var name: String
    var age: Int
    var type: String
    
}
