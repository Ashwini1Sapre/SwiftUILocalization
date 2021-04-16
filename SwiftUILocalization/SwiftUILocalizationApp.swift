//
//  SwiftUILocalizationApp.swift
//  SwiftUILocalization
//
//  Created by Knoxpo MacBook Pro on 16/04/21.
//

import SwiftUI

@main
struct SwiftUILocalizationApp: App {
    var body: some Scene {
        WindowGroup {
            
            
            TabView {
                ContentView()
                   
                    .environment(\.locale, .init(identifier: "en"))
                    .tabItem { Label("English", systemImage:"pause") }
                
                ContentView()
                   
                    .environment(\.locale, .init(identifier: "fr"))
                    .tabItem { Label("French", systemImage:"play") }
                
                ContentView()
                   
                    .environment(\.locale, .init(identifier: "zh-Hans"))
                    .tabItem { Label("Japanese", systemImage:"stop") }
                
            }
           
            
            
            
        }
    }
}
