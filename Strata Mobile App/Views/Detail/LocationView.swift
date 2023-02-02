//
//  LocationView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/25/23.
//

import SwiftUI

struct LocationView: View {
    var location: Location
    
    var body: some View {
        ScrollView {
            Image("location1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                
                }
        .frame(height: 300)
//        .background(LinearGradient(gradient:Gradient(colors:[Color(.gray).opacity(0.3),Color(.gray)]),startPoint: .top, endPoint: .bottom))
        
        VStack(spacing: 30) {
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            VStack(alignment: .leading, spacing: 30) {
                Text(location.description)
                
                VStack(alignment: .leading, spacing:20) {
                    Text("Components")
                        .font(.headline)
                    Text(location.components)
                    
                    
                }
                
                VStack(alignment: .leading, spacing:20) {
                    Text("Directions")
                        .font(.headline)
                    Text(location.directions)
                    
                    
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
    }
        
        
}
        

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(location: Location.all[0])
    }
}
