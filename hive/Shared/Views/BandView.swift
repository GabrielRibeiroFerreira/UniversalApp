//
//  BandView.swift
//  hive
//
//  Created by Gabriel Ferreira on 30/06/20.
//

import SwiftUI

struct BandView: View {
    var band: Band
    
    var body: some View {
        VStack{
            Image(band.imageName)
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                
            List {
                ForEach(band.musics ?? []) { music in
                    NavigationLink(destination: MusicView(music: music, image: band.imageName)) {
                        MusicCell(music: music)
                    }
                }
            }
        }
        .navigationTitle(band.name)
    }
}

struct BandView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BandView(band: testBands[0])
        }
    }
}
