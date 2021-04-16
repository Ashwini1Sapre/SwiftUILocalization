//
//  ContentView.swift
//  SwiftUILocalization
//
//  Created by Knoxpo MacBook Pro on 16/04/21.
//

import SwiftUI

struct ContentView: View {
    var name = "John"
    var appleCount = 2
    var mangoCount = 1
    var orangeCount = 3
    var body: some View {
        
        VStack {
           // Text("welcome")
            VStack {
            Text(LocalizedStringKey("welcome"))
            Text("Fruit-Count \(appleCount) \(mangoCount) \(orangeCount)", tableName: "Plurals")
            }
            Button("Display") {
                
            }
            .foregroundColor(.blue).padding()
            .cornerRadius(3)
            .background(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
            .frame(width: 120, height: 40)
           // Text(LocalizedStringKey("welcome"))
            
        }
        
//        Text("Hello, title! \(name)")
//            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.locale, .init(identifier: "en"))
                .previewLayout(PreviewLayout.sizeThatFits)
        ContentView()
            .environment(\.locale, .init(identifier: "zh-Hans"))
            .previewLayout(PreviewLayout.sizeThatFits)
            ContentView()
            .environment(\.locale, .init(identifier: "fr"))
                .previewLayout(PreviewLayout.sizeThatFits)
        }
    }
}
