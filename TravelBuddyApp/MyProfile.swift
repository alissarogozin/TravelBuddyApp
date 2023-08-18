//
//  MyProfile.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct MyProfile: View {
    var body: some View {
        ZStack{
            Color("darkgreen")
                .cornerRadius(35)
            VStack {
                Spacer()
                    .frame(height: 60.0)
                Text("My Profile")
                    .font(Font.custom("JosefinSans-Light", size: 50))
                    .foregroundColor(Color.white)
                Image("profilepicDark")
                Spacer()
                    .frame(height: 20.0)
                Text("Username:")
                .font(Font.custom("JosefinSans-Light", size: 28))
                .foregroundColor(Color.white)
                Text("Kode with Klossy")
                .font(Font.custom("JosefinSans-Light", size: 23))
                .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 20.0)
                Group{
                    Text("Places You've Visited:")
                   .font(Font.custom("JosefinSans-Light", size: 28))
                   .foregroundColor(Color.white)
                    Text("London, UK 🇬🇧")
                   .font(Font.custom("JosefinSans-Light", size: 23))
                    .foregroundColor(Color.white)
                    Text("Istanbul, Turkey 🇹🇷")
                    .font(Font.custom("JosefinSans-Light", size: 23))
                    .foregroundColor(Color.white)
                    Text("Paris, France 🇫🇷")
                    .font(Font.custom("JosefinSans-Light", size: 23))
                    .foregroundColor(Color.white)
                    Text("Nairobi, Kenya 🇰🇪")
                    .font(Font.custom("JosefinSans-Light", size: 23))
                   .foregroundColor(Color.white)
                    Image("logoDark")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(width: 280.0, height: 180.0)
                    
                }
            }
        }
        .padding(.horizontal)
    }
}
    struct MyProfile_Previews: PreviewProvider {
        static var previews: some View {
            MyProfile()
        }
    }
