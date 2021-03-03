//
//  TextView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 2/3/21.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        
        VStack(spacing: 10) {
            
            Text("San Fransisco")
                .foregroundColor(.pink)
                .font(.title)
            
            Text("New York")
                .font(.system(size: 25, weight: .light, design: .serif))
            
            Text("Boston")
                .fontWeight(.bold)
            
            Text("Los Angeles")
                .italic()
            
            Text("London Calling")
                .foregroundColor(.secondary)
            
            Text("This sans-serif typeface is the system font for iOS, macOS, and tvOS, and includes a rounded variant. It provides a consistent, legible, and friendly typographic voice.")
                .frame(width: .infinity)
                .padding()
                //.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                .multilineTextAlignment(.center)
            
            Text("This sans-serif typeface is the system font for iOS, macOS, and tvOS, and includes a rounded variant. It provides a consistent, legible, and friendly typographic voice.")
                .frame(width: .infinity)
                .padding()
                .lineLimit(2)
            
        }
        
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
