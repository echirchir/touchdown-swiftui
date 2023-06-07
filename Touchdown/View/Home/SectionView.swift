//
//  SectionView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 07/06/2023.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockwise: Bool = false
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - preview
#Preview {
    SectionView(rotateClockwise: true)
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
