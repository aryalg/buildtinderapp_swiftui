//
//  LikesView.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import SwiftUI

struct LikesView: View {
    @EnvironmentObject var userMng: UserManager
    
    public var user: User {
        return userMng.currentUser
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            if !user.goldSubscriber {
            Text("Upgrade to Gold to see people who already liked you.")
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .foregroundColor(.textTitle)
                .font(.system(size: 16, weight: .medium))
                .padding(.horizontal, 40)
                .padding(.vertical, 24)
            }
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: 20, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
            })
        })
    }
}

struct LikesView_Previews: PreviewProvider {
    static var previews: some View {
        LikesView()
            .environmentObject(UserManager())
    }
}
