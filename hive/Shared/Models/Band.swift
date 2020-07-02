//
//  Band.swift
//  hive
//
//  Created by Gabriel Ferreira on 30/06/20.
//

import Foundation

struct Band : Identifiable {
    var id = UUID()
    var name : String
    var membersCount : Int
    var imageName : String
    var musics : [Music]?
}

var testBands = [
    Band(name: "IC3PEAK", membersCount: 2, imageName: "ic3peak",
         musics: [
            Music(name: "TRRST", duration: "3:00"),
            Music(name: "Hello", duration: "2:30")
         ]),
    Band(name: "Maroon 5", membersCount: 7, imageName: "maroon5",
         musics: [
            Music(name: "Sugar", duration: "5:02"),
            Music(name: "Girls Like You", duration: "4:31"),
            Music(name: "Payphone", duration: "4:40"),
         ]),
    Band(name: "Heavy Baile", membersCount: 6, imageName: "heavybaile"),
    Band(name: "Muse", membersCount: 3, imageName: "muse"),
    Band(name: "100 Gecs", membersCount: 2, imageName: "100gecs"),
    Band(name: "Queen", membersCount: 5, imageName: "queen")
]
