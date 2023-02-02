//
//  LocationModel.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/24/23.
//

import Foundation
import MapKit

//Create a enum to enumarate all the preset locations

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case CTB = "Central Tank Batterie"
    case CPF = "Central Process Facilitie"
    case SAT = "Satellite / Well Pad"
    case INST = "Instrumentation"
}

//Created the location model, since every location is unique

struct Location: Identifiable {
    let name: String
    let image: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let components: String
    let directions: String
    let category: Category.RawValue    //RawValue means it will read the string and not the case itself
    let datePublished: String
//let url: String
    var id: String {
        // name = "El Rancho"
        // cityName = "Midland"
        //id = "ElRanchoMidland"
        name + cityName
    }
}

extension Location {
    //Static means the properties are share among all the properties of the struct so that it could be access easily. You could as well declare a global variable for this. 
    static let all: [Location] = [
        Location(name: "El Rancho", image: "background2", cityName: "Midland" , coordinates: CLLocationCoordinate2D(latitude: 31.967281353859157, longitude: -101.98110917262989), description: "Job number - 1184930", components: "CTB PLC & BBU / Battery Box", directions: "Installation", category: "Central Tank Batterie", datePublished: "2023-23-01"),
        Location(name: "Shiner Bock", image: "background2",cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.0020392713527, longitude: -102.07728713992628), description: "Job number - 1184950", components: "CPF PLC & BBU / Battery Box", directions: "Installation & Programming", category: "Central Process Facilitie", datePublished: "2023-23-01"),
        Location(name: "Treaty Oak", image: "background2",cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.067286, longitude: -102.211155), description: "Job number - 1184960", components: "SAT PLC & BBU / Battery Box", directions: "Installation", category: "Satellite / Well Pad", datePublished: "2023-23-01"),
        Location(name: "Petro Legacy - SRW", image: "background2", cityName: "Midland", coordinates: CLLocationCoordinate2D(latitude: 32.068639, longitude: -102.233279) ,description: "Job number - 1184950", components: "BOM", directions: "Installation & Programming", category: "Instrumentation", datePublished: "2023-23-01"),
        Location(name: "Continental", image: "background2", cityName: "Midland" , coordinates:CLLocationCoordinate2D(latitude: 32.087193, longitude: -102.215717), description: "Job number - 1184930", components: "CTB PLC & BBU / Battery Box", directions: "Installation", category: "Central Tank Batterie", datePublished: "2023-23-01"),
        Location(name: "Green Lake", image: "background2", cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.075790597966574, longitude: -102.26817635060252), description: "Job number - 1184950", components: "CPF PLC & BBU / Battery Box", directions: "Installation & Programming", category: "Central Process Facilitie", datePublished: "2023-23-01"),
        Location(name: "Pioneer", image: "background2", cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.08661286216919, longitude: -102.20750600412647), description: "Job number - 1184960", components: "SAT PLC & BBU / Battery Box", directions: "Installation", category: "Satellite / Well Pad", datePublished: "2023-23-01"),
        Location(name: "Diamondback", image: "background2",cityName: "Midland" ,coordinates: CLLocationCoordinate2D(latitude: 32.090670880876644, longitude: -102.19541755163311), description: "Job number - 1184950", components: "BOM", directions: "Installation & Programming", category: "Instrumentation", datePublished: "2023-23-01")
        
    ]
}
