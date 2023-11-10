//
//  Cocktails.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 29.10.2023.
//

import SwiftUI

struct Cocktails: Codable, Identifiable {
    let id: String
    let name: String
    let items: [CocktailsList]
}

struct CocktailsList: Codable, Hashable, Identifiable {
    let id: String
    let name: String
    let image: String
    let ingredients: String
    let preparation: String
    let description: String
}
