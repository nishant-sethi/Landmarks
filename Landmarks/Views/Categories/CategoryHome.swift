//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Nishant sethi on 27/11/2023.
//

import SwiftUI


struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State var showProfile = false
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar{
                Button {
                    showProfile.toggle()
                } label: {
                    Label("user profile",systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showProfile, content: {
                ProfileHost().environment(modelData)
            })
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    CategoryHome()
        .environment(ModelData())
}
