//
//  hiveApp.swift
//  Shared
//
//  Created by Gabriel Ferreira on 30/06/20.
//

import SwiftUI

@main
struct hiveApp: App {
    @StateObject var list = BandsDownload()
    
    var body: some Scene {
        WindowGroup {
            PlaylistView(list: list)
        }
        .commands {
            PlaylistCommands()
        }
    }
    
//    #if os(macOS)
//    Settings {
//        PlaylistSettingsView()
//    }
//    #endif
}
