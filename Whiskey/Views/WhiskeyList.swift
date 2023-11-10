//
//  WhiskeyList.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 11.10.2023.
//

import SwiftUI

struct WhiskeyList: View {
    let whiskeyList: [JamesonWhiskey] = Bundle.main.decode([JamesonWhiskey].self, file: "Jameson.json")
    private let columns = [GridItem(.adaptive(minimum: 150, maximum: 250))]
    @EnvironmentObject private var userSettings: UserSettings
    //@State private var searchText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationStack {
                Text("Hello, \(userSettings.name). Find your favourite whiskey for you.")
                    .font(.system(size: 32, design: .serif))
                    .padding(.bottom, 20)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(whiskeyList) { list in
                            NavigationLink(destination: WhiskeyDetailView(info: list)) {
                                WhiskeyCellView(whiskey: list)
                            }
                        }
                    }
                }
                .navigationTitle("Jameson Whiskey")
                //                List(whiskeyList) { list in
                //                    NavigationLink(destination: WhiskeyDetailView(info: list)) {
                //                        WhiskeyCellView(whiskey: list)
                //                    }
                //                }
                //                .navigationTitle("Jameson")
            }
        }
        //.searchable(text: $searchText)
    }
    
    //    var filteredCocktails: [JamesonWhiskey] {
    //        if searchText.isEmpty {
    //            return whiskeyList
    //        } else {
    //            return whiskeyList.filter { $0.name.localizedCaseInsensitiveContains(searchText)}
    //        }
    //    }
}

struct WhiskeyList_Previews: PreviewProvider {
    static var previews: some View {
        WhiskeyList()
            .environmentObject(UserSettings())
    }
}
