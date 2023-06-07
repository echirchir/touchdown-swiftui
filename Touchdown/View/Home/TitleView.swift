//
//  TitleView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 07/06/2023.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - props
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

// MARK: - preview
#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
