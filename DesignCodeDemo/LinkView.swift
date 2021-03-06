//
//  LinkView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 2/3/21.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            
            Link("Design+Code", destination: URL(string: "https://designcode.io")!)
                .font(.title)
            
            HStack {
                Text("Visit Design+Code")
                    .onTapGesture {
                        UIApplication.shared.open(URL(string: "https://designcode.io")!, options: [:])
                }
                Text("or Visit Hacking With Swift")
                    .onTapGesture {
                        UIApplication.shared.open(URL(string: "https://www.hackingwithswift.com")!, options: [:])
                    }
            }
            
            VStack {
                Link(destination: URL(string: "https://designcode.io")!, label: {
                    Image(systemName: "link")
                        .imageScale(.small)
                        .frame(width: 36, height: 36)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .shadow(color: .blue, radius: 5, x: 2, y: 2)
                        //.mask(Circle()
                })
            }
            
            
            Image("Louie-2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .mask(Text("LOUIE"))
                .font(.system(size: 71, weight: .bold))
            
            Image(systemName: "envelope.badge.fill")
                //.imageScale(.large)
                .foregroundColor(.pink)
                .mask(Rectangle()).opacity(0.1)
                .font(.system(size: 128, weight: .regular))
                
            
            Image(systemName: "envelope.fill")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.system(size: 128, weight: .regular))
                .opacity(0.1)

        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
