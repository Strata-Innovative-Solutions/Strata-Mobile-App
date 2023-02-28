//
//  SettingsView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/23/23.
//

import SwiftUI



struct SettingsView: View {
    
    @EnvironmentObject var authentication: Authentication
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var Email = ""
    @State private var Phone = ""
    @State private var Employer = ""
    @State private var Title = ""
    @State private var darkMode = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")){
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $Email)
                    TextField("Phone", text: $Phone)
                    TextField("Employer", text: $Employer)
                    TextField("Title", text: $Title)
                    
                    
                    
                    
                }
                
                Section(header: Text("Actions")) {
                    Toggle("Dark Mode", isOn: $darkMode)
                    
                }
                Section(header: Text("Help")) {
                    
                    Link("Navigation Tutorials", destination: URL(string: "https://www.strata-is.com/")!)
                        .font(.headline)
                    Link("Send Feedback", destination: URL(string: "mailto:kelvin.k@strata-is.com/")!)
                    Link("Privacy Policy",destination: URL(string: "https://www.strata-is.com/")!)
                    Link("Terms of Service", destination: URL(string: "https://www.strata-is.com/")!)
                    
                    
                    
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                            HStack{
                            Image(systemName: "lock")
//                            .font(.title2)
//                            .foregroundColor(.black)
                            Button("Sign off"){
                                        authentication.updateValidation(success: false)
                                    }
                                    .buttonStyle(.bordered)
                                
                                }
                                
                            }
                            
                        }
                }
                .navigationTitle("Settings")
            }
            
        }
        
    }
    
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView()
        }
    }
    
}
