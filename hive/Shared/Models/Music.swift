//
//  Music.swift
//  hive
//
//  Created by Gabriel Ferreira on 30/06/20.
//

import Foundation

struct Music : Identifiable {
    var id = UUID()
    var name: String
    var duration: String
}

let testMusic = Music(name: "TRRTS", duration: "3:00")
