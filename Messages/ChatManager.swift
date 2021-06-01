//
//  ChatView.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import SwiftUI

class ChatManager: ObservableObject {
    @Published var messages: [Message] = []
    
    private var person: Person
    
    init(person: Person) {
        self.person = person;
        loadMessages();
    }
    
    public func sendMessage(_ message: Message) {
        // Networking
        messages.append(message)
        // if networking failure, then so an error with some retry options
    }
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleReceived]
        
        
    }
}
