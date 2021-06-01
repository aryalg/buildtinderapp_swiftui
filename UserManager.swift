//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import Foundation


class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "", age: 0, jobTitle: "hello")
    @Published var matches: [Person] = []
    @Published var topPicks: [Person] = []
    
    
    init() {
        loadUser()
        loadMatches()
        loadTopPicks()
    }
    
    
    private func loadUser() {
        self.currentUser = User.example
    }
    
    private func loadMatches () {
        self.matches = Person.examples
    }
    
    private func loadTopPicks () {
        self.topPicks = Person.examples
    }
    
    
}
