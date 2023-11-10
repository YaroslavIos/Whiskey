//
//  WhiskeyCellView.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 11.10.2023.
//

import SwiftUI

struct WhiskeyCellView: View {
    let whiskey: JamesonWhiskey
    
    var body: some View {
        ZStack {
            VStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.clear)
                    .frame(width: 190, height: 280)
                    .overlay(
                        Image(whiskey.background)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                        .shadow(color: .black, radius: 3)
                    )
                    .overlay(
                        VStack(spacing: 10) {
                            Image(whiskey.picture)
                                .resizable()
                                .scaledToFit()
                            .frame(width: 170, height: 200)
                            
                            Text(whiskey.name)
                                .foregroundColor(.white)
                        }
                    )
            }
        }
//        HStack(spacing: 10) {
//            Image(whiskey.picture)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 70, height: 90)
//
//
//            VStack(alignment: .leading, spacing: 10) {
//                Text(whiskey.name)
//
//                Text(whiskey.description)
//                    .foregroundColor(.secondary)
//                    .lineLimit(2)
//            }
//        }
    }
}

struct WhiskeyCellView_Previews: PreviewProvider {
    static let whiskey: [JamesonWhiskey] = Bundle.main.decode([JamesonWhiskey].self, file: "Jameson.json")
    static var previews: some View {
        WhiskeyCellView(whiskey: whiskey[0])
    }
}
