//
//  MessageRowView.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import SwiftUI

struct MessageRowView: View {
    var preview: MessagePreview
    var body: some View {
        HStack {
            RoundedImage(url: preview.person.imageURLs.first)
                .frame(height: 90)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(preview.person.name)
                    .font(.system(size: 21, weight: .semibold))
             
                Text(preview.lastMessage)
                    .foregroundColor(.textPrimary)
                    .lineLimit(1)
                    
            }
            
            Spacer()
        }
    }
}

struct MessageRowView_Previews: PreviewProvider {
    static var previews: some View {
        MessageRowView(preview: MessagePreview.example)
    }
}
