//
//  GeneralInfo.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/16/23.
//

import SwiftUI
struct GeneralInfo: View {
  var body: some View {
    ZStack {
      Color("darkgreen")
        .cornerRadius(35)
      VStack{
        Text("General Info")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .foregroundColor(Color.white)
        Image("britFlag")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .padding(.horizontal, 110.0)
          .padding()
        Text("• Located in the United Kingdom")
          .font(.title2)
          .foregroundColor(Color.white)
          .multilineTextAlignment(.leading)
          .padding(.horizontal)
        Text(" • Home to the British Royal family")
          .font(.title2)
          .foregroundColor(Color.white)
          .multilineTextAlignment(.leading)
          .padding(.all, 19.0)
        Text(" • Its iconic structures include the Big Ben, Buckingham Palace, and London Bridge")
          .font(.title2)
          .foregroundColor(Color.white)
          .multilineTextAlignment(.leading)
          .padding(.horizontal)
          .padding()
        Text("Safety Alerts")
          .font(.title)
          .fontWeight(.heavy)
          .foregroundColor(Color.white)
        HStack {
          Image("bus2")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            .padding(.leading, 70.0)
          Image("bigBen")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            .padding(.trailing, 40.0)
        }
      }
    }
    .padding(.horizontal)
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
