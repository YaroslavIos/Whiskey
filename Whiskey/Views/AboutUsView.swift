//
//  AboutUsView.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 5.11.2023.
//

import SwiftUI

struct AboutUsView: View {
    let information: [AboutUs] = Bundle.main.decode([AboutUs].self, file: "About.json")
    
    var body: some View {
        NavigationStack {
            Text("Look through our history.")
                .font(.system(size: 30, design: .rounded))
            List {
                ForEach(information) { information in
                    VStack(alignment: .leading, spacing: 15) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(information.year)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color("fontColor"))
                            Text(information.title)
                                .font(.system(size: 26, design: .serif))
                                .foregroundColor(Color("fontColor"))
                        }
                        Text(information.description)
                            .font(.body)
                    }
                    
                }
            }
        }
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
