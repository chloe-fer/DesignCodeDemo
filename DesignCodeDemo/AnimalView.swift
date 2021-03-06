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
            VStack(alignment: .leading) {
                    Text(animal.name)
                        .font(.title)
                    Text(animal.type)
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
