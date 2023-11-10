//
//  UserSettings.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 5.11.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var isLoggedIn = false
    var name = ""
}
