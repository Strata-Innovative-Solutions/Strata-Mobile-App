//
//  LocationsListview.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/29/23.
//

import SwiftUI

struct LocationsListview: View {
    
    @EnvironmentObject private var mapVM: MapViewModel
    
    var body: some View {
        List {
            ForEach(mapVM.locations) { location in
                Button {
                    mapVM.showNextLocation(location: location)
                } label :{
                    listRowView (location: location)
                }
                    .padding(.vertical,4)
                    .listRowBackground(Color.clear)
                    
             
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct LocationsListview_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListview()
            .environmentObject(MapViewModel())
    }
}

extension LocationsListview {
    
    private func listRowView (location: Location) -> some View {
        HStack {
           
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 45 ,height: 45)
                .cornerRadius(10)
            
            VStack(alignment : .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth:.infinity, alignment: .leading)
            
        }
    }
    
}
