//
//  PlaylistCommands.swift
//  hive
//
//  Created by Gabriel Ferreira on 02/07/20.
//

import SwiftUI

struct PlaylistCommands: Commands {
    var body: some Commands {
        CommandMenu("Playlist") {
            Section{
                Button("Update playlist", action: updatePlaylist)
                    .keyboardShortcut("u")
                Button("Delete playlist", action: deletePlaylist)
                    .keyboardShortcut("d")
            }
        }
    }
    
    private func updatePlaylist() { }
    private func deletePlaylist() { }
}
