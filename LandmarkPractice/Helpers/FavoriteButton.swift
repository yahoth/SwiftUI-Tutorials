//
//  FavoriteButton.swift
//  LandmarkPractice
//
//  Created by TAEHYOUNG KIM on 2022/12/29.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {

        Button {
            isSet.toggle()
        } label: {
            // isSet의 값에 따라 star.fill , star 가 나오게함
            Label("Toggle Favorites", systemImage: isSet ? "star.fill" : "star")
            // iconOnly를 사용하여 아이콘만 노출시킴,
            // label을 사용하는 이유는, voiceOver에서 텍스트를 사용한다.
                .labelStyle(.iconOnly)
            // isSet의 값에 따라 컬러를 다르게 함
                .foregroundColor(isSet ? .yellow : .gray)
        }


    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
