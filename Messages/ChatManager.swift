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
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleReceived]
        
        
    }
}
