
//  ContentView.swift
//  Landmarks
//
//  Created by Nishant sethi on 26/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection:Tab = .featured
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView {
            CategoryHome().tabItem {
                Label("Featured", systemImage: "star")
            }.tag(Tab.featured)
            LandmarkList().tabItem {
                Label("List", systemImage: "list.bullet")
            }
        }
    }
}

#Preview {
    ContentView().environment(ModelData())
}
