//
//  LocationsViewModel.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/27/23.
//
import SwiftUI
import Foundation
import MapKit

class MapViewModel: ObservableObject{
    //All loaded locations
    @Published var locations: [Location]
    // Current location on map
    @Published var mapLocation: Location {
//        In order to update the map location 
        didSet { updateMapRegion(location: mapLocation)}
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init(){
        let locations = LocationDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location){
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
        
    }
}
