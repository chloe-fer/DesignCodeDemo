//
//  ShapesView.swift
//  DesignDemo
//
//  Created by Chloe Fermanis on 28/2/21.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            
            VStack(spacing: 50) {
                VStack {
                    Circle()
                        .stroke(Color.white, lineWidth: 1)
                        .frame(width: 44, height: 44)
                    Text("Design+Code")
                        .fontWeight(.light)

    //                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
    //                    .foregroundColor(.white)
    //                    .frame(width: 100, height: 36)
    //                  .overlay(
    //                        Text("Design+Code")
    //                            .foregroundColor(.pink)
    //                    )
                    
                        

                }
                .frame(width: 200, height: 200)
                .background(Color.pink)
                .clipShape(Circle())
                .shadow(color: .pink, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                Text("SwiftUI")
                    .fontWeight(.light)

                    .frame(width: 125, height: 44)
                    .background(Color.orange)
                    .cornerRadius(25)
                    .shadow(color: .orange, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                Text("Handbook")
                    .fontWeight(.light)

                    .frame(width: 125, height: 44)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            }
            .foregroundColor(.white)


        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}

