//
//  TabBarButtonView.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import SwiftUI

enum TabBarButtonType: String {
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}


struct TabBarButtonView: View {
    var type: TabBarButtonType
//    var action: () -> Void
    
    @EnvironmentObject var appState: AppStateManager
    
    
    var body: some View {
        Button(action: {appState.selectedTab = type}, label: {
            Image(systemName: type.rawValue )
                .resizable()
                .aspectRatio(contentMode: .fit)
                .if(appState.selectedTab == type, transform: {
                    $0.foregroundColor(type == .star ? .yellow : .red)
                })
                
                .foregroundColor(Color.gray.opacity(0.5))
        })
        .frame(height: 32)
    }
}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .profile)
    }
}
