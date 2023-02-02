//
//  CategoryView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/27/23.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    // computed property: resulting in of the location being filter in the main of that view
    var locations: [Location] {
        return Location.all.filter {$0.category == category.rawValue}
    }
    
    
    var body: some View {
        ScrollView {
            LocationList(locations: locations)
            //The $ sign refers to a wildcard
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.CPF)
    }
}
