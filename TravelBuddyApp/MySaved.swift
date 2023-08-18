//
//  MySaved.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/18/23.
//

import SwiftUI

struct MySaved: View {
    var body: some View {
        
        ZStack {
            Color ("lightGreen")
                .cornerRadius(35)
            
            VStack {
                HStack {
                    Text("My Saved")
                        .font(Font.custom("JosefinSans-Light", size: 50))
                }
                .padding(.top, 50.0)
                .padding(.bottom, 50.0)
                HStack {
                    Image(systemName: "bookmark")
                        .resizable()
                        .padding(.all, 15.0) .frame(width: /*@START_MENU_TOKEN@*/53.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/54.0/*@END_MENU_TOKEN@*/)
                    Text(" Nov 14: Rema at the O2")
                        .font(Font.custom("JosefinSans-Light", size: 26))
                
                    Spacer()
                }
                
                .padding(.bottom, 50.0)
        
                HStack {
                    Image (systemName : "pin")
                    
                        .resizable()
                        .padding(.all, 12.0) .frame(width: /*@START_MENU_TOKEN@*/53.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/54.0/*@END_MENU_TOKEN@*/)
                    Text("The Clove Club, Shoreditch")
                        .font(Font.custom("JosefinSans-Light", size: 26))
                    Spacer()
                }
                .padding(.bottom, 50.0)
                .padding(.leading)
                HStack {
                    Image (systemName:"tree")
                        .resizable()
                        .padding(.all, 12.0) .frame(width: /*@START_MENU_TOKEN@*/53.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/54.0/*@END_MENU_TOKEN@*/)
                    Text("Regent's Park!! ")
                        .font(Font.custom("JosefinSans-Light", size: 26))
                    Spacer()
                }
                .padding(.bottom, 50.0)
                .padding(.leading)
                
                Image ("logo")
                          .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch)
                          .aspectRatio(contentMode: .fit)
                          .padding(.vertical, 40.0)
                }
            .padding(.top)
                   
                }
        .padding(.horizontal)
        }
        
       
    }


struct MySaved_Previews: PreviewProvider {
    static var previews: some View {
        MySaved()
    }
}
