//
//  Person.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import Foundation


struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
    
    var name: String
    var imageURLs: [URL]
    var bio: String
    var age: Int
    
}

extension Person {
    static let example = Person(name: "Alex", imageURLs: [URL(string: "https://picsum.photos/400/300")!], bio: "Good Person", age: 17)
    static let example2 = Person(name: "Samanta", imageURLs: [URL(string: "https://picsum.photos/400/301")!], bio: "Thikai Person", age: 23)

    static let examples: [Person] = [
        Person.example, Person.example2,
        Person(name: "Bikram Aryal", imageURLs: [URL(string:"https://picsum.photos/401/300")!], bio: "Handsome man", age: 25),
        Person(name: "Ramesh Giri", imageURLs: [URL(string:"https://picsum.photos/402/300")!], bio: "Straight Forward", age: 26),]
}
