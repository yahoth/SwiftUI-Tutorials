//
//  Landmark.swift
//  LandmarkPractice
//
//  Created by TAEHYOUNG KIM on 2022/12/01.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    // 어차피 밖에서 imageName 안쓸거니까 
    private var imageName: String
    var image: Image {
        get {
          return Image(imageName)
        }
    }
    // 어차피 밖에서 coordinates 안쓸거니까
    // 여기서 밖이란, Landmark struct의 외부를 의미함.
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }

}

