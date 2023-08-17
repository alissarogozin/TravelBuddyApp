//
//  MyNotes.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct MyNotes: View {
    
    @State var choiceMade = "Options"
    
    var body: some View {

        ZStack {
            Color("lightGreen")
                    .cornerRadius(35)
            
            VStack{
                Text("My Notes 📝").font(.largeTitle).fontWeight(.heavy)//.padding(.vertical, 300.0)
                                
                Menu{
                    Button(action: {
                        choiceMade = "Other"
                    }, label:{
                        Text(" Other")
                        
                    })
                    .frame(width: 0.0)
                    
                    Button(action: {
                        choiceMade = "Restaurants"
                    }, label:{
                        Text("🍽️ Restaurants")
                    })
                    Button(action: {
                        choiceMade = "Hotels"
                    }, label:{
                        Text("🏨 Hotels")
                    })
                    Button(action: {
                        choiceMade = "Parks"
                    }, label:{
                        Text("🏞️ Parks")
                    })
                    Button(action: {
                        choiceMade = "Cafes"
                    }, label:{
                        Text("☕️ Cafes")
                    })
                    Button(action: {
                        choiceMade = "Daytrips"
                    }, label:{
                        Text("🚊 Daytrips")
                    })
                    
                } label: {
                    Label(
                        title: {Text("\(choiceMade)") },
                        icon: {Image(systemName: "plus")}
  
                    )
                }
            }
        }
        .padding(.horizontal)
        
    }
}

struct MyNotes_Previews: PreviewProvider {
    static var previews: some View {
        MyNotes()
    }
}
