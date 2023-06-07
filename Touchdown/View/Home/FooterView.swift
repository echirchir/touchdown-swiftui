//
//  FooterView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 06/06/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(1)
            
            Text("Copyright © Elisha Chirchir\nAll rights reserved. 2023")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(0)
        }
    }
}

#Preview {
    FooterView()
        .previewLayout(.sizeThatFits)
        .padding()
}
