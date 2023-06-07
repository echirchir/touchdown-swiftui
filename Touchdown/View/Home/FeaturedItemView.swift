//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 06/06/2023.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - props
    
    let player: Player
    
    // MARK: - body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - preview
#Preview {
    FeaturedItemView(player: players[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
