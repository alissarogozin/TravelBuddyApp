//
//  MyReviews.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct MyReviews: View {
    var body: some View {
        ZStack {
            Color("lightGreen")
                    .cornerRadius(35)
            
            VStack {
                Text("My Reviews")
                    .font(Font.custom("JosefinSans-Light", size: 35))
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
                    .frame(height: 30.0)
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.black)
                        .imageScale(.large)
                    Text("Anonymous1")
                        .font(Font.custom("JosefinSans-Light", size: 30))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.leading)
                HStack {
                    Text("Nandos ⭐️⭐️⭐️⭐️")
                        .font(Font.custom("JosefinSans-Light", size: 30))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.leading)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    .font(Font.custom("JosefinSans-Light", size: 20))
                
                    .padding()
                Spacer()
                    .frame(height: 40.0)
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.black)
                        .imageScale(.large)
                    Text("Anonymous2")
                        .font(Font.custom("JosefinSans-Light", size: 30))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.leading)
                HStack {
                    Text("Hotel Astoria ⭐️⭐️")
                        .font(Font.custom("JosefinSans-Light", size: 30))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.leading)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    .font(Font.custom("JosefinSans-Light", size: 20))
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .frame(width: 280.0, height: 180.0)
                    .padding()
            }
            
            
        }
        .padding(.horizontal)
        
      
    }
}

struct MyReviews_Previews: PreviewProvider {
    static var previews: some View {
        MyReviews()
    }
}
