//
//  Landmark.swift
//  Landmarks
//
//  Created by Nishant sethi on 26/11/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable,Codable {
    var name: String
    var category: String
    var city: String
    var state: String
    var id: Int
    var park: String
    var description: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable,Codable {
        var longitude: Double
        var latitude: Double
    }
}
