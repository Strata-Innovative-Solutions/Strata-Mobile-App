//
//  LocationsViewModel.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/27/23.
//
import SwiftUI
import Foundation
import MapKit

class MapViewModel: ObservableObject {
    //All loaded locations
    @Published var locations: [Location]
    // Current location on map
    @Published var mapLocation: Location {
//        In order to update the map location 
        didSet { updateMapRegion(location: mapLocation)}
    }
    
    // Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
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
//
    //Show list of locations
    @Published var showLocationsList: Bool = false
    
    //Show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
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
    // Private function to toggle location list
     func toggleLocationList() {
        withAnimation(.easeInOut){
            showLocationsList = !showLocationsList
            
        }
    }
    func showNextLocation (location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
        
    }
    
    func nextButtonPressed() {
        // Get the current index
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation}) else {
            print("could not find current index in locations array!")
            return
        }
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            
            guard let firstLocation = locations.first else {return}
            showNextLocation(location: firstLocation)
            return
        }
        
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
