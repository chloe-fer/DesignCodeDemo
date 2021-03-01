//
//  ContentView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 28/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        
        ZStack {
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        show.toggle()
                    }
                }
            if show {
                BindingView(show: $show)
                    .transition(.move(edge: .bottom))
                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            }
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
