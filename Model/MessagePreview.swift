//
//  MessageThread.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import Foundation


struct MessagePreview: Hashable {
    var person: Person
    var lastMessage: String;
}


extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hello There. How are you doing today? How's the weather where you live")
    
    static let examples: [MessagePreview] = [MessagePreview(person: Person.example, lastMessage: "Hi There"),MessagePreview(person: Person.example2, lastMessage: "Hello There. How are you doing today? How's the weather where you live") ]
}
