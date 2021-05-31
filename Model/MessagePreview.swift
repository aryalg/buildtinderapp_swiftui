//
//  MessageThread.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import Foundation


struct MessagePreview {
    var person: Person
    var lastMessage: String;
}


extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hello There")
}
