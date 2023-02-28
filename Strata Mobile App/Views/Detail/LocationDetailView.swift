//
//  LocationDetailView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 2/6/23.
//

import SwiftUI
import MapKit


struct LocationDetailView: View {
    
    
    @EnvironmentObject private var mapVM: MapViewModel
    
    let location: Location
    
    var body: some View {
        ScrollView{
            VStack{
                imageSection
                //                    .shadow(color: Color.black.opacity(0.3), raduis: 20 , x: 0, y:10)
                
                
                VStack(alignment: .leading ,spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    componentsSection
                    Divider()
                    directionsSection
                    
            }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                    
            }
            
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
        
    }
    
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationDataService.locations.first!)
            .environmentObject(MapViewModel())
            
    }
}


extension LocationDetailView {
    
    
    private var imageSection: some View {
        
        TabView{
            //             ForEach(location.imageNames, id: \.self)
            //                Image($0)
            Image("location1")
                .resizable()
                .scaledToFill()
            //                        .frame(width: UIScreen.main.bounds.width)
            //                        .clipped
        }
        .frame(height:500)
        .tabViewStyle(PageTabViewStyle())
        
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8 ){
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
                
            
        }
        
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16 ){
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            
            
            
        }
        
    }
    
    private var componentsSection: some View {
            VStack(alignment: .leading, spacing: 16 ){
                Text(location.components)
                .font(.subheadline)
                .foregroundColor(.secondary)
    
    
    
    
        }
    
    }
    
    private var directionsSection: some View {
            VStack(alignment: .leading, spacing: 16 ){
                Text(location.directions)
                .font(.subheadline)
                .foregroundColor(.secondary)
                
    
                Link("SCADA", destination: URL(string: "https://www.strata-is.com/")!)
                    .font(.headline)
                    .tint(.green)
    
    
        }
    
    }
    
    
    private var backButton: some View {
        Button{
            mapVM.sheetLocation = nil 
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}

