//
//  PlaylistView.swift
//  Shared
//
//  Created by Gabriel Ferreira on 30/06/20.
//

import SwiftUI

struct PlaylistView: View {
    @ObservedObject var list: BandsDownload
    
    var body: some View {
        NavigationView {
            List {
                ForEach(list.bands) { band in
                    BandCell(band: band)
                }
                .onMove(perform: moveBand)
                .onDelete(perform: deleteBand)
            }
            .navigationTitle("Playlist")
            .toolbar {
                #if os(iOS)
                EditButton()
                #endif
            }
            
            Text("Select a band")
                .font(.largeTitle)
        }
    }
    
    func moveBand(from: IndexSet, to: Int) {
        withAnimation {
            list.bands.move(fromOffsets: from, toOffset: to)
        }
    }
    
    func deleteBand(offset: IndexSet) {
        withAnimation {
            list.bands.remove(atOffsets: offset)
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlaylistView(list: testDownload)
            PlaylistView(list: testDownload)
                .previewDevice("iPad (7th generation)")
            PlaylistView(list: testDownload)
                .previewLayout(.fixed(width: 1200, height: 700))
        }
    }
}
