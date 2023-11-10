//
//  MainView.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 5.11.2023.
//

import SwiftUI

struct MainView: View {
    @StateObject private var userSettings = UserSettings()
    var body: some View {
        Group {
            if userSettings.isLoggedIn {
                ContentView()
            } else {
                StartScreen()
            }
        }.environmentObject(userSettings)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
