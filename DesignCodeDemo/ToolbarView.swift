//
//  ToolbarView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 4/3/21.
//

import SwiftUI

struct ToolbarView: View {
    var body: some View {
        
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        
                        HStack(spacing: 45) {
                            Image(systemName: "person")
                                    .frame(width: 32, height: 32)
                                    .background(Color.blue)
                                    .mask(Circle())
                                    .foregroundColor(.white)
                            Divider()
                            Image(systemName: "cube")
                                .frame(width: 32, height: 32)
                                .background(Color.blue)
                                .mask(Circle())
                                .foregroundColor(.white)
                            Divider()
                            Image(systemName: "paperplane")
                                .frame(width: 32, height: 32)
                                .background(Color.blue)
                                .mask(Circle())
                                .foregroundColor(.white)
                        }
                        .frame(width: .infinity)
                }
            }
        }
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
