//
//  Message.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import Foundation


struct Message: Hashable {
    
    var content: String
    var person: Person? = nil
    
    var fromCurrentUser: Bool {
        return person == nil
    }
}

extension Message {
    static let exampleSent = Message(content: "Hello There")
    static let exampleReceived = Message(content: "Hello There", person: Person.example)
}
