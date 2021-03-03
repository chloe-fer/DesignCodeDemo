//
//  VideoView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 3/3/21.
//

import AVKit
import SwiftUI

struct VideoView: View {

    @State var player = AVPlayer()
    var videoUrl: String = "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"

    
    var body: some View {
        
        ZStack {
            
            Color.white
            
            VStack {
                
                Text("New Video")
                    .font(.title)
                VideoPlayer(player: player)
                    .onAppear() {
                        player = AVPlayer(url: URL(string: videoUrl)!)
                }
                    .frame(width: .infinity, height: 200)
            }
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
