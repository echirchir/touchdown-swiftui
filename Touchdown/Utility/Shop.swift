//
//  Shop.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 07/06/2023.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
