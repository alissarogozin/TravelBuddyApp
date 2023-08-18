//
//  ContentView.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("lightGreen")
                    .cornerRadius(35)
                VStack {
                    Text("Welcome to TravelBuddy!")
                        .font(Font.custom("JosefinSans-Light", size: 50))
                    Spacer()
                        .frame(height: 30.0)
                    Image("profilePic")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    TextField("Username", text: $username)
                        .font(Font.custom("JosefinSans-Light", size: 30))
                        .border(/*@START_MENU_TOKEN@*/Color("darkgreen")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    TextField("Password", text: $password)
                        .font(Font.custom("JosefinSans-Light", size: 30))
                        .border(/*@START_MENU_TOKEN@*/Color("darkgreen")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            
                    Spacer()
                        .frame(height: 15.0)
                    NavigationLink(destination: MyMap()) {
                        Text("Log In")
                            .font(Font.custom("JosefinSans-Light", size: 30))
                    }
                    .padding()
//                    Spacer()
//                        .frame(height: 60.0)
                    Image("logo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    VStack{
                        Text("Travel Smarter.")
                            .font(Font.custom("JosefinSans-Light", size: 30))
                        Text("Not Harder.")
                            .font(Font.custom("JosefinSans-Light", size: 30))
                    }
                }
                .padding()
            }  .buttonStyle(.borderedProminent)
                .padding(.horizontal)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
