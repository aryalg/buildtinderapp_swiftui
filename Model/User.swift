//
//  User.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import Foundation


struct User {
    var name: String
    
    var goldSubscriber: Bool = false
}


extension User {
    static let example = User(name: "Alex", goldSubscriber: false)
}
