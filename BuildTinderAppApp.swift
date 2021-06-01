//
//  BuildTinderAppApp.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import SwiftUI

@main
struct BuildTinderAppApp: App {
    @ObservedObject var mng: AppStateManager = AppStateManager()
    @ObservedObject var userMng: UserManager = UserManager()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
