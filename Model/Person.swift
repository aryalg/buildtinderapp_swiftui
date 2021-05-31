//
//  Person.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import Foundation


struct Person {
    var name: String
    var imageURLs: [URL]
    
}

extension Person {
    static let example = Person(name: "Alex", imageURLs: [URL(string: "https://picsum.photos/400/300")!])
}
