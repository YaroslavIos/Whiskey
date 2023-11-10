//
//  CodableExtension.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 11.10.2023.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}
