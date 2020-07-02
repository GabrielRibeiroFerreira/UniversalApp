//
//  BandsCell.swift
//  hive
//
//  Created by Gabriel Ferreira on 02/07/20.
//

import SwiftUI

struct BandCell: View {
    var band: Band
    
    var body: some View {
        NavigationLink(destination: BandView(band: band)){
            HStack{
                Image(band.imageName)
                    .resizable()
                    .frame(width: 70, height: 70, alignment: .center)
                    .cornerRadius(8.0)
                VStack (alignment: .leading) {
                    Text(band.name)
                        .font(.headline)
                    Text("\(band.membersCount) members")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}
