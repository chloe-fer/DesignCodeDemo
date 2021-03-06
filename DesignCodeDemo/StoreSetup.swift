//
//  StoreSetup.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 5/3/21.
//

import SwiftUI
import Combine

class APIStore: ObservableObject {
    
    @Published var allUsers: Array<String> = []
    
    func getUsers() {
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        //let url = URL(string: )
    }
    
}
