//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Nishant sethi on 26/11/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
