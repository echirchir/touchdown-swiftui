//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 07/06/2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - props
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            // MARK: - navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, getSafeAreaTop())
            
            // MARK: - header
            HeaderDetailView()
                .padding(.horizontal)
            
            // MARK: - detail top
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // MARK: - detail bottom
            VStack(alignment: .center, spacing: 0) {
                // MARK: - ratings + sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // MARK: - description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                // MARK: - quantity + favorite
                
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                // MARK: - add to cart
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                .padding(.top, -105))
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                 )
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
        .previewLayout(.fixed(width: 375, height: 812))
}
