//
//  MessageListVM.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import Foundation


class MessageListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews() {
        // Handle networking to load messagePreviews from a server
        self.messagePreviews = MessagePreview.examples
    }
}
