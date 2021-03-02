//
//  CustomModalView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 1/3/21.
//

import SwiftUI

struct CustomModalView: View {
    
    @State var showModal = false

    var body: some View {
    
        ZStack {
            
            Button(action: {
                showModal = true
            }) {
                Text("Sign In")
            }
        
            if showModal {
            
                Rectangle()
                    .foregroundColor(Color.black.opacity(0.5))
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        showModal = false
                }
                
                SignInView()

            }
        
        }
    }
}

struct CustomModalView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModalView()
    }
}
