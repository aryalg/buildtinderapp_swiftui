//
//  ChatView.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import SwiftUI
import Combine

class ChatManager: ObservableObject {
    @Published var messages: [Message] = []
    @Published var keyboardIsShowing: Bool = false
    
    var cancellable: AnyCancellable? = nil
    
    private var person: Person
    
    init(person: Person) {
        self.person = person;
        loadMessages();
        setupPublishers();
    }
    
    public func sendMessage(_ message: Message) {
        // Networking
        messages.append(message)
        // if networking failure, then so an error with some retry options
    }
    
    public let keyboardWillShow = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification)
        .map({ _ in true})
    
    public let keyboardWillHide = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification)
        .map({ _ in false})
    
    
    private func setupPublishers() {
        cancellable = Publishers.Merge(keyboardWillShow, keyboardWillHide)
            .subscribe(on: DispatchQueue.main)
            .assign(to: \.keyboardIsShowing, on: self)
        
    }
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleReceived]
        
    }
    
    deinit {
        cancellable?.cancel();
    }
    
    
}
