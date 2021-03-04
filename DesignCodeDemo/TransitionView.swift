//
//  TransitionView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 4/3/21.
//

import SwiftUI

struct TransitionView: View {
    
    @State private var show = false
    
    var body: some View {
        
        ZStack {
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
            
            if show {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .fill(Color.pink)
                    .padding()
                    .transition(.move(edge: .bottom))
                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
