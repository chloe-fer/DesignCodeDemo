//
//  StatusBarView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 6/3/21.
//

import SwiftUI

struct StatusBarView: View {
    
    @State var isHidden = false
    
    var body: some View {
        Text("Status bar")
            .statusBar(hidden: isHidden)
            .onTapGesture {
                withAnimation {
                    isHidden.toggle()
                }
            }
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView()
    }
}
