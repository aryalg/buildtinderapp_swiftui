//
//  ChatViewHeader.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import SwiftUI

struct ChatViewHeader: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let name: String
    let imageURL: URL?
    let videoAction: () -> Void
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.top)
                .shadow(radius: 3)
            
            HStack {
                Button(action: {presentationMode.wrappedValue.dismiss()}, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.textPrimary)
                        .font(.system(size: 26, weight: .semibold))
                })
                
                Spacer()
                
                VStack(spacing: 0) {
                    RoundedImage(url: imageURL)
                        .frame(height: 50)
                    
                    Text(name)
                        .foregroundColor(Color.textSecondary)
                        .font(.system(size: 14))
                }
                Spacer()
                
                
                Button(action: { videoAction()}, label: {
                    Image(systemName: "video.fill")
                        .font(.system(size: 20, weight: .bold))
                })
            }
            .padding(.horizontal,22)
            .padding(.bottom, 10)
            .padding(.top, 5)
        }.frame(height: 50)
    }
}

struct ChatViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        ChatViewHeader(
            name: Person.example.name, imageURL: Person.example.imageURLs.first, videoAction: {
                
            })
    }
}
