//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 07/06/2023.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - props
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // MARK: - ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            
            Spacer()
            
            // MARK: - sizes
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2)
                                )
                        }
                    }
                }
            }
        }
    }
}

// MARK: - preview
#Preview {
    RatingsSizesDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
