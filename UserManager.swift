//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import Foundation


class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "")
    
    
    init() {
        loadUser()
    }
    
    
    private func loadUser() {
        self.currentUser = User.example
    }
    
    
}
