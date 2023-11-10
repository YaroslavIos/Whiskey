//
//  CocktailItemRow.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 30.10.2023.
//

import SwiftUI

struct CocktailItemRow: View {
    let cocktailItem: CocktailsList
    var body: some View {
        HStack {
            Image(cocktailItem.image)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(cocktailItem.name)
                Text(cocktailItem.description)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
        }
    }
}

//struct CocktailItemRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CocktailItemRow(cocktailItem: <#T##CocktailList#>)
//    }
//}
