//
//  BindingView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 1/3/21.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var show: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.pink)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.easeInOut) {
                    show.toggle()
               }
            }
    }
}

struct BindingView_Previews: PreviewProvider {
    
    static var previews: some View {
        BindingView(show: .constant(true))
    }
}
