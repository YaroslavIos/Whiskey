//
//  WhiskeyDetailView.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 12.10.2023.
//

import SwiftUI

struct WhiskeyDetailView: View {
    @State private var isFlipped = false
    let info: JamesonWhiskey
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .overlay(
                    Image(info.background)
                        .resizable()
                        .cornerRadius(12)
                )
                .overlay(
                    Image(info.picture)
                        .resizable()
                        .scaledToFit()
                )
            
            Spacer()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Description")
                        .font(.title)
                        .fontWeight(.bold)
                    Text(info.description)
                    
                    Text("Nose")
                        .font(.title)
                        .fontWeight(.bold)
                    Text(info.nose)
                    
                    Text("Taste")
                        .font(.title)
                        .fontWeight(.bold)
                    Text(info.taste)
                    
                    Text("Finish")
                        .font(.title)
                        .fontWeight(.bold)
                    Text(info.finish)
                }
            }
            .padding()
        }
        //        ZStack {
        //            if isFlipped {
        //                Rectangle()
        //                    .foregroundColor(.clear)
        //                    .overlay(
        //                        Form {
        //                            Section {
        //                                Text("Name: \(info.name)")
        //                                Text("Description: \(info.description)")
        //                                Text(" Nose: \(info.nose)")
        //                                Text("Taste: \(info.taste)")
        //                                Text("Finish: \(info.finish)")
        //                            }
        //                        }
        //                            //.padding(.top, 40)
        //                    )
        //            } else {
        //                Rectangle()
        //                    .foregroundColor(.clear)
        //                    .overlay(
        //                        Image(info.background)
        //                            .resizable()
        //                            .scaledToFill()
        //                            .opacity(0.3)
        //                    )
        //                    .overlay(
        //                        Image(info.picture)
        //                            .resizable()
        //                            .scaledToFit()
        //                    )
        //                    .ignoresSafeArea()
        //            }
        //        }
        //.padding(.top, 20)
        //.ignoresSafeArea()
        //        .onTapGesture {
        //            withAnimation {
        //                isFlipped.toggle()
        //            }
        //        }
    }
}

struct WhiskeyDetailView_Previews: PreviewProvider {
    static let info: [JamesonWhiskey] = Bundle.main.decode([JamesonWhiskey].self, file: "Jameson.json")
    
    static var previews: some View {
        WhiskeyDetailView(info: info[0])
    }
}
