//
//  MapView.swift
//  LandmarkPractice
//
//  Created by TAEHYOUNG KIM on 2022/12/01.
//

import SwiftUI
import MapKit

/*
 기본 좌표 값이 있다.
 데이터에 의한 좌표를 전달해야하는데, 변수 상으로 시도했을 때는 실패했다.
 좌표값을 변경해주는 function을 만들어서 onApear에 담아준다.
 */

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
        
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate,
                                    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
