//
//  ModalView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 1/3/21.
//

import SwiftUI

struct ModalView: View {
    
    @State var showModal = false
    
    var body: some View {
        
        Button(action: {
            showModal = true
        }) {
            Capsule().fill(Color.pink)
                .frame(width: 100, height: 44)
                .overlay(Text("Press Me")
                    .foregroundColor(.white)
                )
        }
        .sheet(isPresented: $showModal, content: {
            ShapesView()
        })
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
