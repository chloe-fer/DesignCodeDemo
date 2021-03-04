//
//  ContentView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 28/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    let today = Date().formatDate()
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Image("Louie-2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                Text(today.uppercased())
                    .font(.title)
                    .foregroundColor(.secondary)
                    .bold()
                Text("Louie")
                    .font(.system(size: 50))
                    .bold()
            }
            .padding(.leading, 40)

                
            VStack(alignment: .center) {
                
               Spacer()
                
                Text("View Transition")
                    .padding()
                    .background(
                        Capsule()
                            .fill(Color.white)
                    )
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            show.toggle()
                        }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

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
