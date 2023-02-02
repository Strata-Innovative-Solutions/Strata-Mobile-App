//
//  WelcomeView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/23/23.
//

import SwiftUI

struct welcomeView: View {
    var body: some View {
        ZStack{
            Image("background2").ignoresSafeArea()
            VStack {
                Image("strataicon2")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Strata Innovative Solutions")
                    .font(.body)
                    .foregroundColor(Color.black)
                    .padding(.leading, -5.0)
                
            }
            //        .padding().background(Color.green
            //            .blur(radius: 3.0))
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
