//
//  LocationsListview.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/29/23.
//

import SwiftUI

struct LocationsListview: View {
    
    @EnvironmentObject private var vm: MapViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                HStack {
                   
                    
                }
            }
        }
    }
}

struct LocationsListview_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListview()
            .environmentObject(MapViewModel())
    }
}
