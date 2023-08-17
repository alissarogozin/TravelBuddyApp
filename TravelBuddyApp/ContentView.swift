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
                        .font(.largeTitle)
                    Spacer()
                        .frame(height: 30.0)
                    Image("profilePic")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    TextField("Username", text: $username)
                        .font(.title)
                    TextField("Password", text: $password)
                        .font(.title)
                    Spacer()
                        .frame(height: 15.0)
                    NavigationLink(destination: MyMap()) {
                        Text("Log In")
                            .font(.title)
                    }
                    Spacer()
                        .frame(height: 15.0)
                    Image("logo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    VStack{
                        Text("Travel Smarter.")
                            .font(.title2)
                        Text("Not Harder.")
                            .font(.title2)
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
