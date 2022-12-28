//
//  CircleImage.swift
//  LandmarkPractice
//
//  Created by TAEHYOUNG KIM on 2022/12/01.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color(red: 0.0, green: 0.284, blue: 0.284), lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
