//
//  Favoritesview.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/23/23.
//
import CoreLocationUI
import SwiftUI
import MapKit


struct MapView: View {
    
    @EnvironmentObject private var vm: MapViewModel
    //    Got rid of the map region in the MapView and used the vm model 
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 31.967281353859157, longitude: -101.98110917262989), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                Map(coordinateRegion: $mapRegion, showsUserLocation: true)
                    .ignoresSafeArea()
                    .tint(.green)
                
                LocationButton(.currentLocation){
                    print("")
                }
                .foregroundColor(.white)
                .cornerRadius(8)
                .labelStyle(.iconOnly) //or .titleAndIcon
                .symbolVariant(.fill)
                
                .padding(.bottom,30)
                .padding(.trailing, 320)
                
                VStack(spacing: 0) {
                    //                header
                    //                    .padding()
                    
                    Spacer()
                }
            }
        }
    }
}

struct Mapview_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .environmentObject(MapViewModel())
    }
}
//extension MapView {
//
//    private var header: some View {
//        VStack {
//            Text(vm.mapLocation.name + "," + vm.mapLocation.cityName)
//                .font(.title2)
//                .fontWeight(.black)
//                .foregroundColor(.primary)
//                .frame(height: 55)
//                .frame(maxWidth: .infinity)
//                .background(Color.green)
//                .overlay(alignment: .leading) {
//                    Image(systemName: "arrow.down")
//                        .font(.headline)
//                        .foregroundColor(.primary)
//                        .padding()
//                }
//
//        }
//        .background(.thickMaterial)
//        .cornerRadius(10)
//        .shadow(radius: 20)
//
//    }
//
//}
