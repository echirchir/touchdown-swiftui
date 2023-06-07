//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 06/06/2023.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - preview
#Preview {
    FeaturedTabView()
        .previewDevice("iPhone 12 Pro")
        .background(Color.gray)
}
