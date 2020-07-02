//
//  MusicView.swift
//  hive
//
//  Created by Gabriel Ferreira on 30/06/20.
//

import SwiftUI

struct MusicView: View {
    var music: Music
    var image: String
    
    var body: some View {
        VStack  {
            Image(image)
            HStack {
                Text("0:00")
                    .padding(.all)
                Spacer()
                Text("-\(music.duration)")
                    .padding(.all)
            }
            HStack {
                Spacer()
                Image(systemName: "arrow.left.to.line")
                Spacer()
                Image(systemName: "play.fill")
                Spacer()
                Image(systemName: "arrow.right.to.line")
                Spacer()
            }
        }
        .navigationTitle(music.name)
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView(music: testMusic, image: testBands[0].imageName)
    }
}
