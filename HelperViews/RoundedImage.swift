//
//  RoundedImage.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import SwiftUI
import KingfisherSwiftUI


struct RoundedImage: View {
    var url: URL?
    var body: some View {
        KFImage(url)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(url: URL(string: "https://picsum.photos/400"))
    }
}
