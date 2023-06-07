//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Elisha Chirchir on 06/06/2023.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // MARK: - locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // MARK: - create prop for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // MARK: - create a decoder
        
        let decoder = JSONDecoder()
        
        // MARK: - create property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // MARK: - return ready to use data
        return decodedData
        
    }
}
