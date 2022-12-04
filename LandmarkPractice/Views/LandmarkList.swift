//
//  LandmarkList.swift
//  LandmarkPractice
//
//  Created by TAEHYOUNG KIM on 2022/12/01.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        NavigationStack {
            // Landmark 구조체는 Identifiable 프로토콜을 따름.
            // landmarks: [Landmark] 는 id값을 설정해줄 필요가 없음.
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 14 Pro"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
