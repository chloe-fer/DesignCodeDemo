//
//  MaxView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 2/3/21.
//

import SwiftUI

struct MaxView: View {
    var body: some View {

        ZStack {
            
            Color.pink
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .overlay(
            Image(systemName: "xmark")
                .frame(width: 32, height: 32)
                .background(Circle().stroke())
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
            )
        }
        .foregroundColor(.white)
        
        
//        VStack {
//            HStack {
//                Image(systemName: "xmark")
//                    .frame(width: 32, height: 32)
//                    .background(Circle().stroke())
//                Spacer()
//            }
//            Spacer()
//        }
//        .padding()
    }
}

struct MaxView_Previews: PreviewProvider {
    static var previews: some View {
        MaxView()
    }
}
