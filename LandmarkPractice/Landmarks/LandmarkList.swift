//
//  LandmarkList.swift
//  LandmarkPractice
//
//  Created by TAEHYOUNG KIM on 2022/12/01.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    /*
     filteredLandmarks:
     
     showFavoritesOnly가 false 일땐 모든 항목을 보여준다.
     !을 붙여서 항상 true를 반환하기 떄문이다.
     
     showFavoritesOnly가 true일 땐 isFavorite 프로퍼티가
     true인 값들만 보여준다.
     
     */
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationStack {
            
            // Landmark 구조체는 Identifiable 프로토콜을 따름.
            // landmarks: [Landmark] 는 id값을 설정해줄 필요가 없음.
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //        ForEach(["iPhone SE (3rd generation)", "iPhone 14 Pro"], id: \.self) { deviceName in
        LandmarkList()
            .environmentObject(ModelData())
        //                .previewDevice(PreviewDevice(rawValue: deviceName))
        //        }
    }
}
