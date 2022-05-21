//
//  ContentView.swift
//  NavigationPractice
//
//  Created by David Argote on 20/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            
            ListScreen()
                .tabItem {
                TabItemComponent(
                    title: "Card", nameIcon: "creditcard.fill", isSelected: true
                )
            }.tag(0)
            
            Text("Profile")
                .tabItem {
                    TabItemComponent(
                        title: "Person", nameIcon: "person", isSelected: false
                    )
                }.tag(1)
        }
    }
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("TabBarColor"))
        UITabBar.appearance().backgroundColor = UIColor(Color("TabBarColor"))
        UITabBar.appearance().isTranslucent = true
    }
}

struct TabItemComponent: View {
    
    var title: String
    var nameIcon: String
    var isSelected: Bool
    
    var body: some View {
        Image(systemName: nameIcon)
            .foregroundColor(isSelected ? Color.white : Color.gray)
        Text(title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
