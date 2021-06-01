//
//  User.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import Foundation


struct User {
    var name: String
    var age: Int
    var jobTitle: String
    var goldSubscriber: Bool = false
    var profileTip: String = ""
    
    var imageURLs: [URL] = []
}


extension User {
    static let example = User(
        name: "Alex",
        age: 34,
        jobTitle: "Software Engineer",
        goldSubscriber: false,
        profileTip: "Photo Tip: Make waves with a beach photo and get more likes",
        imageURLs: [URL(string: "https://picsum.photos/399/300")!]
        
    )
}
