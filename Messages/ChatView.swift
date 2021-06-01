//
//  ChatView.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatMsg: ChatManager
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        self.chatMsg = ChatManager(person: person)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVStack {
                ForEach(chatMsg.messages.indices, id: \.self) { index in
                    let msg = chatMsg.messages[index]
                    MessageView(message: msg)
                }
            }
        })
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}
