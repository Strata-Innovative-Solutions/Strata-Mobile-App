//
//  LocationDataService.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/27/23.
//

import Foundation
import MapKit

class LocationDataService {
    
    static let locations: [Location] = [
        Location(name: "El Rancho", image: "background2", cityName: "Midland" , coordinates: CLLocationCoordinate2D(latitude: 31.967281353859157, longitude: -101.98110917262989), description: "Job number - 1184930", components: "CTB PLC & BBU / Battery Box", directions: "Installation", category: "Central Tank Battery", datePublished: "2023-23-01"),
        Location(name: "Shiner Bock", image: "background2",cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.0020392713527, longitude: -102.07728713992628), description: "Job number - 1184950", components: "CPF PLC & BBU / Battery Box", directions: "Installation & Programming", category: "Central Process Facility", datePublished: "2023-23-01"),
        Location(name: "Treaty Oak", image: "background2",cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.067286, longitude: -102.211155), description: "Job number - 1184960", components: "SAT PLC & BBU / Battery Box", directions: "Installation", category: "Satellite / Well Pad", datePublished: "2023-23-01"),
        Location(name: "Petro Legacy - SRW", image: "background2", cityName: "Midland", coordinates: CLLocationCoordinate2D(latitude: 32.068639, longitude: -102.233279) ,description: "Job number - 1184950", components: "BOM", directions: "Installation & Programming", category: "Instrumentation", datePublished: "2023-23-01"),
        Location(name: "Continental", image: "background2", cityName: "Midland" , coordinates:CLLocationCoordinate2D(latitude: 32.087193, longitude: -102.215717), description: "Job number - 1184930", components: "CTB PLC & BBU / Battery Box", directions: "Installation", category: "Central Tank Battery", datePublished: "2023-23-01"),
        Location(name: "Green Lake", image: "background2", cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.075790597966574, longitude: -102.26817635060252), description: "Job number - 1184950", components: "CPF PLC & BBU / Battery Box", directions: "Installation & Programming", category: "Central Process Facility", datePublished: "2023-23-01"),
        Location(name: "Pioneer", image: "background2", cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.08661286216919, longitude: -102.20750600412647), description: "Job number - 1184960", components: "SAT PLC & BBU / Battery Box", directions: "Installation", category: "Satellite / Well Pad", datePublished: "2023-23-01"),
        Location(name: "Diamondback", image: "background2",cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.090670880876644, longitude: -102.19541755163311), description: "Job number - 1184950", components: "BOM", directions: "Installation & Programming", category: "Instrumentation", datePublished: "2023-23-01")
    ]
}


// Remember to add link string
// Adjust images and set it equal to an Array
