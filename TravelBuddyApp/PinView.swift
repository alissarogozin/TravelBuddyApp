//
//  PinView.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct PinView: View {
//    @State private var showTitle = true
    let title: String
    
    var body: some View {
        VStack(spacing:0) {
            Text(title)
                .font(.callout)
                .padding(5)
                .background(Color(.white))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                
//                .opacity(showTitle ? 0:1)
            
            Image(systemName: "mappin.circle.fill")
                    .font(.title)
                    .foregroundColor(.red)

            Image(systemName: "arrowtriangle.down.fill")
                    .font(.caption)
                    .foregroundColor(.red)
                    .offset(x: 0, y: -5)
        }//Vstack end
//        .onTapGesture{
//            withAnimation(.easeInOut) {
//                showTitle.toggle()
        }
    }

struct PinView_Previews:
    PreviewProvider {
    static var previews: some View {
        PinView(title: "")
  }
}

