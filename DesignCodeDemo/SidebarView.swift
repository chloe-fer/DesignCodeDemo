//
//  SidebarView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 3/3/21.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        
        NavigationView {
            List() {
                NavigationLink(destination: HomeView()) {
                    Label("Courses", systemImage: "book")
                }
                NavigationLink(destination: HomeView()) {
                    Label("Tutorial", systemImage: "square")
                }
            }
            .navigationTitle("Learn")
            
            HomeView()
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
