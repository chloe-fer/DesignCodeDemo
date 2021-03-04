//
//  LazyGridView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 4/3/21.
//

import SwiftUI

struct LazyGridView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 16), count: 4), spacing: 16) {
                ForEach(0 ..< 32) { item in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.pink)
                        .frame(height: 100)
                }
            }
            .padding()
        }
    }
}

struct LazyGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridView()
    }
}
