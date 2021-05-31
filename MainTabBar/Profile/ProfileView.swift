//
//  ProfileView.swift
//  BuildTinderApp
//
//  Created by Bikram Aryal on 31/05/2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack(spacing: 0) {
       
            ZStack(alignment: .topTrailing) {
                RoundedImage(url: URL(string: "https://picsum.photos/400"))
                    .frame(height: 100)
                
                Button(action: {}, label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 18, weight: .heavy))
                        .foregroundColor(.gray.opacity(0.5))
                        .frame(width: 32, height: 32)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                })
                .padding(.vertical, 0)
                .offset(x: -10)
            }
            
            Spacer().frame(height: 18)
            Group {
                
            
            
            Text("Bikram, 25")
                .foregroundColor(.textTitle)
                .font(.system(size: 26, weight: .medium))
            
            Spacer().frame(height: 8)
            
            Text("Software Engineer")
            }
            
            Spacer().frame(height: 22)
            
            HStack(alignment: .top) {
                Spacer()
               
                    Button(action: {}, label: {
                        VStack {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(Color.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 6)
                        
                        
                        Text("SETTINGS")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondary)
                        }
                        
                    })
                Spacer()

                
                Button(action: {}, label: {
                    VStack {
                    Image(systemName: "camera.fill")
                        .foregroundColor(Color.white)
                        .font(.system(size: 38))
                        .padding(22)
                        .background(Color.red)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 6)
                    
                    
                    Text("ADD MEDIA")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.textSecondary)
                    }
                    
                })
                Spacer()
                
                Button(action: {}, label: {
                    VStack {
                    Image(systemName: "shield.fill")
                        .foregroundColor(Color.gray.opacity(0.5))
                        .font(.system(size: 30))
                        .padding(10)
                        .background(Color.white)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 6)
                    
                    
                    Text("SAFETY")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.textSecondary)
                    }
                    
                })
                Spacer()
                    
                    
                    
                
            }
            Spacer().frame(height: 14)

            HStack {
                Text("Photo Tip: Make waves with a beach photo and get more likes")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                
                Button(action: {}, label: {
                    Image(systemName: "plus")
                        .font(.system(size: 12, weight: .heavy))
                        .foregroundColor(.pink)
                        .padding(6)
                    
                }).background(Color.white)
                
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
               
            }
            .padding()
            .background(Color.pink)
            .cornerRadius(12)
            .padding(.horizontal, 8)
            
           
            
            ZStack {
                Color.gray.opacity(0.15)
                ProfileSwipePromo(){
                    
                }
            }.padding(.top, 10)
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileView()
                .background(Color.defaultBackground)
            ProfileView()
                .background(Color.defaultBackground)
        }
            
    }
}
