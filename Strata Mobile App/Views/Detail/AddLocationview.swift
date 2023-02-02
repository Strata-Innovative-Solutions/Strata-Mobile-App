//
//  AddLocationview.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/27/23.
//

import SwiftUI

struct AddLocationview: View {
    //created 5 states variable name of a type string
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.CPF
    //For review, category main does not work.
    @State private var description: String = ""
    @State private var components: String = ""
    @State private var directions: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Location Name", text: $name)
                    
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) {
                            category in Text(category.rawValue)
                                .tag(category)
                            
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                    //added a text editor with a binding description
                    
                }
                Section(header: Text("components")) {
                    TextEditor(text: $components)
                    
                }
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                //
                ToolbarItem {
                    Button{
                        
                    } label: {
                        Label("Done", systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                    }
                    .disabled(name.isEmpty)
                    // disable to make sure a name is enter before having the option to save
                }
            })
            .navigationTitle("New Location")
            .navigationBarTitleDisplayMode(.inline)
            
                
            }
            .navigationViewStyle(.stack)
            
        }
    
    
    }

struct AddLocationview_Previews: PreviewProvider {
    static var previews: some View {
        AddLocationview()
    }
}



//Make sure to change the navigationview to stack to change the constraint error.
