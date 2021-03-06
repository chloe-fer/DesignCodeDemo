//
//  StaticDataView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 4/3/21.
//

import SwiftUI

struct StaticDataView: View {
    
    var courses: [Course]
    
    var body: some View {
        List(courses, id: \.id) { item in
            Text(item.title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(item.color)
                .cornerRadius(10)
                .foregroundColor(.white)
        }
    }
}

struct StaticDataView_Previews: PreviewProvider {
    static var previews: some View {
        StaticDataView(courses: courses)
    }
}

struct Course: Identifiable {
    
    var id = UUID()
    var title: String
    var color: Color
}

var courses = [

    Course(title: "FCUK", color: Color.pink),
    Course(title: "SwiftUI", color: Color.yellow),
    Course(title: "UIDesign", color: Color.green)

]
