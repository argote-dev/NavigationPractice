//
//  ListScreen.swift
//  NavigationPractice
//
//  Created by David Argote on 20/05/22.
//

import SwiftUI

struct ListScreen: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<100) { number in
                    Text("\(number)")
                }
            }
            .listStyle(.sidebar)
            .refreshable {
                // Referesh data
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("NapoNumbers")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Code here
                    } label: {
                        Image(systemName: "folder.badge.plus")
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
