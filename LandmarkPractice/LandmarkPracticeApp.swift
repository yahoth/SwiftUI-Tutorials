//
//  LandmarkPracticeApp.swift
//  LandmarkPractice
//
//  Created by TAEHYOUNG KIM on 2022/12/01.
//

import SwiftUI

@main
struct LandmarkPracticeApp: App {
    
    /// StateObject 를 사용하는 앱 주기 동안
    /// 인스턴스를 한 번만 초기화하기 위해서이다
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
