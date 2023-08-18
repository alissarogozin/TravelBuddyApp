//
//  MyMap.swift
//  TravelBuddyApp
//
//  Created by scholar on 8/15/23.
//

import SwiftUI
import MapKit
struct Place: Identifiable {
    let id = UUID()
    var cityName: String
    var coordinate: CLLocationCoordinate2D
}

struct MyMap: View {
    @State var showMenu = false
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5072, longitude: 0.1276), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    @State private var showingAlert = false
    @State private var name = ""

    var cities = [
        Place(cityName:"London, England", coordinate: CLLocationCoordinate2D(latitude: 51.7072, longitude: -0.00106)),
        Place(cityName: "Paris,France",
              coordinate: CLLocationCoordinate2D(latitude: 48.864716, longitude: 2.3522)),
        Place(cityName: "Istanbul, Turkey",
              coordinate: CLLocationCoordinate2D(latitude: 41.0082, longitude: 28.9784)),
        Place(cityName: "Nairobi, Kenya",
              coordinate: CLLocationCoordinate2D(latitude: 1.2921, longitude: 36.8219))
    ]
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading){
                    NavigationStack{
                        ZStack(alignment: .topTrailing){
                            Map(coordinateRegion: $region, annotationItems: cities)
                            { place in
                                MapAnnotation(coordinate: place.coordinate) {
                                    NavigationLink {
                                        GeneralInfo ()
                                    } label :{
                                        PinView(title: place.cityName)
                                    }
                                }
                            }
                            .edgesIgnoringSafeArea(.all)
                            HStack {
                                Spacer()
                                VStack {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Button( action: {
                                            showingAlert.toggle()})
                                        { Image(systemName: "plus")
                                        }
                                        .alert("What City Are You Traveling To?", isPresented: $showingAlert) {
                                            
                                            Button("Add", action: {submit()})
                                            TextField("Enter the city name", text: $name)
                                        }
                                        //                            Button("Add", role:.cancel)
                                        .padding()
                                        .background(.white.opacity(0.75))
                                        .foregroundColor(.black)
                                        .font(.title2)
                                        .clipShape(Circle())
                                        .padding(.trailing)
                                    }
                                }
                                
                                
                            }
                            VStack{
                                Button("+") {
                                    region.span.latitudeDelta *= 0.9
                                    region.span.longitudeDelta *= 0.9
                                }
                                .padding()
                                .font(.title)
                                .foregroundColor(.black)
                                .background(Color.white.opacity(0.7))
                                .cornerRadius(10)
                                
                                Button("-") {
                                    region.span.latitudeDelta /= 0.9
                                    region.span.longitudeDelta /= 0.9
                                }
                                .padding()
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .background(Color.white.opacity(0.7))
                                .cornerRadius(10)
                            }
                            .padding(.trailing,20)
                        }
                    }
                    
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            //            .navigationBarTitle("Side menu", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
        
    }
        
    func submit() {
        print("You entered \(name)")
                }
    }
    
    struct MyMap_Previews: PreviewProvider {
        static var previews: some View {
            MyMap()
        }
    }
