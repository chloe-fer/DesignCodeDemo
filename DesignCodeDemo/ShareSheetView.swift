//
//  ShareSheetView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 3/3/21.
//

import SwiftUI

struct ShareSheetView: View {
    var body: some View {
        
        Button(action: {
            shareButton()
        }) {
            Image(systemName: "square.and.arrow.up")
                .imageScale(.medium)
                .frame(width: 36, height: 36)
                .background(Color.pink)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
    }
    
    func shareButton() {
        let url = URL(string: "https://designcode.io")
        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityController, animated: true, completion: nil)
        
        
    }
}

struct ShareSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ShareSheetView()
    }
}
