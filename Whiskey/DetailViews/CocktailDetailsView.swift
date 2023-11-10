//
//  CocktailDetailsView.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 5.11.2023.
//

import SwiftUI

struct CocktailDetailsView: View {
    let cocktailDetail: CocktailsList
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ScrollView {
                Image(cocktailDetail.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(16)
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.largeTitle)
                        .foregroundColor(Color("fontColor"))
                    Text(cocktailDetail.ingredients)
                    Spacer(minLength: 20)
                    Text("Preparation")
                        .font(.largeTitle)
                        .foregroundColor(Color("fontColor"))
                    Text(cocktailDetail.preparation)
                    Spacer(minLength: 20)
                    Text("Description")
                        .font(.largeTitle)
                        .foregroundColor(Color("fontColor"))
                    Text(cocktailDetail.description)
                }
            }
            .padding()
        }
    }
}

//struct CocktailDetailsView_Previews: PreviewProvider {
//    static let info: [CocktailsList] = Bundle.main.decode([CocktailsList].self, file: "JamesonList.json")
//    static var previews: some View {
//        CocktailDetailsView(cocktailDetail: info[0])
//    }
//}
