//
//  Favoritesview.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/23/23.
//
import CoreLocationUI // For the button
import SwiftUI
import MapKit


struct MapView: View {
    
    @EnvironmentObject private var mapVM: MapViewModel
    //    Got rid of the map region in the MapView and used the mapVM model
    //    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 31.967281353859157, longitude: -101.98110917262989), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    //Binding to a region specifies what part of the location is being shown
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                Map(coordinateRegion: $mapVM.mapRegion, showsUserLocation: true, annotationItems: mapVM.locations, annotationContent: {location in
                    MapMarker(coordinate: location.coordinates, tint: .blue)
                    //                        .scaleEffect(mapVM.mapLocation == location ? 1 : 0.7)
                    //                        .onTapGesture{ mapVM.showNextLocation(location: location)}
                    
                })
                .ignoresSafeArea()
                .tint(.blue)
                
                
                LocationButton(.currentLocation){
                    
                }
                .foregroundColor(.white)
                .cornerRadius(8)
                .labelStyle(.iconOnly) //or .titleAndIcon
                .symbolVariant(.fill)
                
                .padding(.bottom,30)
                .padding(.trailing, 330)
                
                
                
                VStack(spacing: 0) {
                    header
                        .padding()
                    
                    Spacer()
                    
                    ZStack {
                        ForEach(mapVM.locations) {location in
                            if mapVM.mapLocation == location {
                                LocationPreviewView(location: location )
                                    .padding(.leading, 80)
                                    .padding(.bottom,30)
                                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                                
                                
                            }
                            
                            
                            
                        }
                    
                        
                        
                    }
                    
                }
                
                
                
            }
            
            //            .padding(0.0)   //.navigationViewStyle(.stack)
        }
        .sheet(item: $mapVM.sheetLocation, onDismiss: nil) { location in LocationDetailView(location: location)
            
        }
        
    }
    
    
    
    
    struct Mapview_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
                .environmentObject(MapViewModel())
        }
    }
    
}
    
    
    
    extension MapView {
        
        private var header: some View {
            VStack {
                Button(action: mapVM.toggleLocationList){
                    Text(mapVM.mapLocation.name + ", " + mapVM.mapLocation.cityName)
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .animation(.none, value: mapVM.mapLocation)
                        .background(Color.green)
                        .overlay(alignment: .leading) {
                            Image(systemName: "arrow.down")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding()
                                .rotationEffect(Angle(degrees:mapVM.showLocationsList ? 180: 0))
                        }
                }
                if mapVM.showLocationsList {
                    LocationsListview()
                }
                
            }
            .background(.thickMaterial)
            .cornerRadius(10)
            .shadow(radius: 20)
            
        }
        
    }
    
    
//
//final class MapviewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
//    
//    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
//    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//    
//    let locationManger = CLLocationManager()
//    
//    func requestAllowOnceLocationPermission(){
//        locationManger.requestLocation()
//    }
//    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard let latestLocation = locations.first else {
//            //show an error
//            return
//        }
//        
//        DispatchQueue.main.async {
//            self.mapRegion = MKCoordinateRegion( center: latestLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.5))
//        }
//    }
//    
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error){
//        print(error.localizedDescription)
//    }
//}
