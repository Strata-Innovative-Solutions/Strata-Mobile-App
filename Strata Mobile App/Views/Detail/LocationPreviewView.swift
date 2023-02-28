//
//  LocationPreviewView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 2/5/23.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var mapVM: MapViewModel
    
    let location: Location
    
    var body: some View {
        HStack {
            VStack(spacing: 16.0) {
                imageSection
                titleSection
            }
            VStack(spacing: 8){
                learnMoreButton
                directionsButton
                scadaButton
                
                
            }
            
        }
        //Adjust background color
        .padding(20)
        .background(Color.green, in: RoundedRectangle(cornerRadius: 10))
        
        
        
        
        
    }
    
    
    struct LocationPreviewView_Previews: PreviewProvider {
        static var previews: some View {
            LocationPreviewView(location: LocationDataService.locations.first!)
            ZStack {
//                Color.green.ignoresSafeArea()
                
                LocationPreviewView(location:
                                        LocationDataService.locations.first!)
//                .padding()
            }
            .environmentObject(MapViewModel())
        }
    }
}

extension LocationPreviewView {
    
    private var imageSection: some View {
        ZStack {
            
            // if let imageName = location.imageNames.first {
            // Image(imageName)
            
            if location.image.first != nil{
                Image("location1")
                    .resizable()
                    .scaledToFill()
                    .frame(width:100 , height: 80)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
        
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
                .lineLimit(0)
                
            
            Text(location.cityName)
                .font(.subheadline)
            
        }
        
    }
    
    private var learnMoreButton: some View {
        Button {
            mapVM.sheetLocation = location
        } label: {
            Text ("Learn more")
                .font(.headline)
                .frame(width: 100, height: 30)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var directionsButton: some View {
        Button {
            
        } label: {
            Text ("Directions")
                .font(.headline)
                .frame(width: 100, height: 30)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var scadaButton: some View {
        Button {

        } label: {
            Text ("SCADA")
                .font(.headline)
                .frame(width: 100, height: 30)
        }
        .buttonStyle(.bordered)
        
    }
}
