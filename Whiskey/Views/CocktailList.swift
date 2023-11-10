//
//  CocktailList.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 29.10.2023.
//

import SwiftUI

struct CocktailList: View {
    let cocktails = Bundle.main.decode([Cocktails].self, file: "JamesonList.json")
    var body: some View {
        NavigationStack {
            List {
                ForEach(cocktails) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            NavigationLink(destination: CocktailDetailsView(cocktailDetail: item)) {
                                CocktailItemRow(cocktailItem: item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Cocktails")
//            .listStyle(.sidebar)
        }
    }
}

struct CocktailList_Previews: PreviewProvider {
    static var previews: some View {
        CocktailList()
    }
}
