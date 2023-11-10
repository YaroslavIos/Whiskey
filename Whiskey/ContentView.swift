//
//  ContentView.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 9.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WhiskeyList()
                .tabItem {
                    Label("Jameson", systemImage: "wineglass")
                }
            CocktailList()
                .tabItem {
                    Label("Cocktails", systemImage: "menucard.fill")
                }
            AboutUsView()
                .tabItem {
                    Label("About Us", systemImage: "info.square.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
