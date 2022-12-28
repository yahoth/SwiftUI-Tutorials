//
//  ContentView.swift
//  LandmarkPractice
//
//  Created by TAEHYOUNG KIM on 2022/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

/// ContentView에서는 ModelData의 객체가 사용되진 않는다.
/// 하지만 contentView의 프리뷰에서 만약 ModelData의 객체를 사용하는 뷰가 나온다면
/// 프리뷰 로딩에 실패할 것이다. 그래서 해줘야 한다.

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
