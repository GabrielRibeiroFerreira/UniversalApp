//
//  BandsDownload.swift
//  hive
//
//  Created by Gabriel Ferreira on 01/07/20.
//

import Foundation

class BandsDownload : ObservableObject {
    @Published var bands: [Band]
    
    init(bands: [Band] = []) {
        self.bands = bands
    }
}

let testDownload = BandsDownload(bands: testBands)
