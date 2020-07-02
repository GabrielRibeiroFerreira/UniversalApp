//
//  MusicCell.swift
//  hive
//
//  Created by Gabriel Ferreira on 02/07/20.
//

import SwiftUI

struct MusicCell: View {
    var music: Music
    var body: some View {
        HStack {
            Text(music.name)
                .font(.headline)
            Spacer()
            Text(music.duration)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}
