//
//  StartScreen.swift
//  Whiskey
//
//  Created by Ярослав Любиченко on 5.11.2023.
//

import SwiftUI

struct StartScreen: View {
    @State private var name = ""
    @EnvironmentObject private var userSettings: UserSettings
    @State private var isButtonDisabled = true
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .overlay(
                    Image("first")
                        .resizable()
                )
                .overlay(
                    VStack {
                        HStack {
                            TextField("Enter your name", text: $name)
                                .multilineTextAlignment(.center)
                                .onChange(of: name) { name in
                                    isButtonDisabled = name.count == 0
                                }
                        }
                        
                        Button(action: login) {
                            HStack {
                                Image(systemName: "checkmark.circle")
                                Text("Ok")
                            }
                        }
                        .disabled(isButtonDisabled)
                    }
                        .padding()
                        .onAppear {
                            name = UserDefaults.standard.string(forKey: "name") ?? ""
                        }
                )
                .ignoresSafeArea()
        }
    }
    
    private func login() {
        if !name.isEmpty {
            userSettings.name = name
            userSettings.isLoggedIn.toggle()
            UserDefaults.standard.set(name, forKey: "name")
            }
        }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
