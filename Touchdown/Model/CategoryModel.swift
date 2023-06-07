//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 07/06/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String 
}
