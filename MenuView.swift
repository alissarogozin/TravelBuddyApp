//
//  MenuView.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading) {
                HStack {
                    NavigationLink(destination: MyProfile()) {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                            .padding(.top, 30)
                        Text("Profile")
                            .foregroundColor(.gray)
                            .font(.headline)
                            .padding(.top, 30)
                    }
                }
                .padding(.top, 100)
                HStack {
                    //**REMEMBER TO CHANGE DESTINATION!
                    NavigationLink(destination: MyNotes()) {
                        Image(systemName: "note")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text("My Notes")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 30)
                HStack {
                    NavigationLink(destination: MyReviews()) {
                        Image(systemName: "star")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text("My Reviews")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 30)
                NavigationLink(destination: MySaved()) {
                    HStack {
                        Image(systemName: "bookmark")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text("My Saved")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 30)
                HStack {
                    NavigationLink(destination: MyMap()) {
                        Image(systemName: "map")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text("My Map")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top, 30)
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(red: 32/255, green: 32/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
        }//nav end
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
