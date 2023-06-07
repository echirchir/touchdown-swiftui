//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 07/06/2023.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - props
    let product: Product
    
    // MARK: - body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // MARK: - photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // MARK: - name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // MARK: - price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

// MARK: - preview
#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}
