//
//  PersonSquare.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 01/06/2021.
//

import KingfisherSwiftUI
import SwiftUI

struct PersonSquare: View {
    
    var person: Person
    var blur: Bool
    
    var body: some View {
        GeometryReader { geo in
            
            ZStack(alignment: .bottomLeading) {
                KFImage(person.imageURLs.first)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width, height: geo.size.height)
                    .if(blur) {
                        $0.blur(radius: 25)
                    }
                
                
                Text("\(person.name), \(person.age)")
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold))
                    .if(blur) {
                        $0.redacted(reason: .placeholder)
                    }
                
            }
            .cornerRadius(16)
        }
        
        
       
        
    }
}

struct PersonSquare_Previews: PreviewProvider {
    static var previews: some View {
        PersonSquare(person: Person.example, blur: false)
            .frame(width: 125, height: 100 )
    }
}
