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
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.black)
                        .imageScale(.large)
                    Text("Anonymous1")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.leading)
                HStack {
                    Text("Nandos ⭐️⭐️⭐️⭐️")
                        .font(.title3)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.leading)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                
                    .padding()
                
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.black)
                        .imageScale(.large)
                    Text("Anonymous2")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.leading)
                HStack {
                    Text("Hotel Astoria ⭐️⭐️")
                        .font(.title3)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.leading)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                
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
