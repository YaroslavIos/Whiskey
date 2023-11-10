//
//  BannerView.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 12.10.2023.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Image("Jameson Whiskey")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .infinity, height: 130)
                    .cornerRadius(10)
                
                Image("Jameson Whiskey")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                    .cornerRadius(10)
            }
            
        }
        .padding()
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
