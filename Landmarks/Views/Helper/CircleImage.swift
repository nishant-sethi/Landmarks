//
//  CircleImage.swift
//  Landmarks
//
//  Created by Nishant sethi on 26/11/2023.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    
    var body: some View {
        image.clipShape(Circle()).overlay{
            Circle().stroke(.gray,lineWidth: 4)
        }.shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
