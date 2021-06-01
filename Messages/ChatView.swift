//
//  ChatView.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatMsg: ChatManager
    
    @State private var typingMessage: String = ""
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        self.chatMsg = ChatManager(person: person)
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Spacer().frame(height: 60)
                ScrollView(.vertical, showsIndicators: true, content: {
                    LazyVStack {
                        ForEach(chatMsg.messages.indices, id: \.self) { index in
                            let msg = chatMsg.messages[index]
                            MessageView(message: msg)
                                .animation(.easeIn)
                                .transition(.move(edge: .trailing))
                        }
                    }
                })
                
                
                ZStack(alignment: .trailing) {
                    Color.textFieldBG
                    TextField("Type a Message", text: $typingMessage)
                        .foregroundColor(Color.textPrimary)
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(height: 45)
                        .padding(.horizontal)
                    
                    Button(action: { sendMessage()}, label: {
                        Text("Send")
                    })
                    .padding(.horizontal)
                    .foregroundColor(typingMessage.isEmpty ? Color.textPrimary : Color.blue)
                }
                .frame(height: 40)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(
                            Color.gray.opacity(0.3), lineWidth: 1))
                .padding(.horizontal)
                .padding(.bottom)
            }
            
            
            
            ChatViewHeader(name: person.name, imageURL: person.imageURLs.first, videoAction: {
                // Video Action
            })
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
    func sendMessage() {
        
        chatMsg.sendMessage(Message(content: typingMessage))
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
            .previewDevice("iPhone 12 Pro Max")
    }
}
