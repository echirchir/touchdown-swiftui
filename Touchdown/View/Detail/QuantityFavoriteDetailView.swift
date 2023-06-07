//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 07/06/2023.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    // MARK: - props
    
    @State private var counter: Int = 0
    
    // MARK: - body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    hapticFeedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }

            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100 {
                    hapticFeedback.impactOccurred()
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                hapticFeedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
            }

        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavoriteDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
