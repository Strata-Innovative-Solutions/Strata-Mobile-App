//
//  LocationList.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/25/23.
//

import SwiftUI

struct LocationList: View {
    var locations: [Location]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(locations.count) \(locations.count > 1 ? "locations": "location" )")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing:15)], spacing: 15) {
                ForEach(locations) { location in
                    NavigationLink(destination: LocationView(location: location)) {
                        LocationCard(location: location)
                    }
                }
            }
            .padding(.top)
            
        }
        .padding(.horizontal)
    }
}

struct LocationList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            LocationList(locations: Location.all)
        }
        
    }
}
