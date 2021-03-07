//
//  AnimalView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 5/3/21.
//

import SwiftUI

struct AnimalView: View {
       
    var body: some View {
        
        
        List(animals) { animal in
            HStack {
                VStack(alignment: .leading) {
                        Text(animal.name)
                            .font(.title)
                        Text(animal.type)
                            .foregroundColor(.secondary)
                }
                Spacer()
                Text("\(animal.age)")
                    .frame(width: 36, height: 36)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                
            }
        }
//        VStack {
//            ForEach(animals) { animal in
//                Text("\(animal.name) is a \(animal.type) and is \(animal.age) years old.")
//                    .padding()
//            }
//        }
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
