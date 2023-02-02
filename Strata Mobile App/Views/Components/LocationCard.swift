//
//  LocationCard.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/24/23.
//

import SwiftUI

struct LocationCard: View {
    var location: Location
    
    var body: some View {
        VStack {
            Image("location1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(alignment: .bottom) {
                    Text(location.name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .shadow(color:.black, radius: 3 , x:0 ,y:0)
                        .frame(maxWidth: 136)
                        .padding()
                }
//        } placeholder: {
//            Image(systemName:"photo")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 40 , height: 40, alignment: .center)
//                .foregroundColor(.white.opacity(0.7))
//                .frame(maxWidth: .infinity, maxHeight: .infinity) .overlay(alignment: .bottom) {
//                    Text(location.name)
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .shadow(color:.black, radius: 3 , x:0 ,y:0)
//                    .frame(maxWidth: 136)
//                    .padding()
//
//        }
        }
        .frame(width: 160 , height: 217 , alignment:.top)
        .background(LinearGradient(gradient:Gradient(colors:[Color(.gray).opacity(0.3),Color(.gray)]),startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3) , radius: 15, x:0 , y: 10)
    }
}

struct LocationCard_Previews: PreviewProvider {
    static var previews: some View {
        LocationCard(location: Location.all[0])
    }
}
