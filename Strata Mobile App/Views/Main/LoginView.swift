//
//  LoginView1.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 2/25/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    var body: some View {
        VStack {
            Image("stratainnovative")
                .resizable()
                .aspectRatio(contentMode: .fit)
            //Dynamic Frame...
                .padding(.horizontal, 80)
                .padding(.vertical)
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
                
            
            HStack {
                Image(systemName: "envelope")
                    .font(.title2)
                    .foregroundColor(.black)
                
                TextField("Email Address", text: $loginVM.credentials.email)
                    .keyboardType(.emailAddress)
            }
            .padding()
            .background(Color.black.opacity(0.12))
            .cornerRadius(15)
            .padding(.horizontal)
            
            
            HStack{
                Image(systemName: "lock")
                    .font(.title2)
                    .foregroundColor(.black)
                
                SecureField("Password", text: $loginVM.credentials.password)
                if loginVM.showProgressView {
                    ProgressView()
                }
                
                
                
                
            }
            .padding()
            .background(Color.black.opacity(0.12))
            .cornerRadius(15)
            .padding(.horizontal)
            
            
            Button("Log in") {
                loginVM.login { success in
                    authentication.updateValidation(success: success)
                    
                }
                
                
            }
            .disabled(loginVM.loginDisabled)
            .padding(.bottom,20)
            if authentication.biometricType() != .none {
                Button{
                    authentication.requestBiometricUnlock{
                        (result: Result<Credentials, Authentication.AuthenticationError>) in switch result {
                        case .success(let credentials):
                            loginVM.credentials = credentials
                            loginVM.login { success in authentication.updateValidation(success: success)}
                        case .failure(let error):
                            loginVM.error = error
                        }
                        
                    }
                    
                } label: {
                    Image(systemName: authentication.biometricType() == .face ? "faceid" : "touchid")
                        .resizable()
                        .frame( width: 40, height: 40)
                }
            }
            
            
            
            
        }
        .autocapitalization(.none)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .disabled(loginVM.showProgressView)
        .alert(item: $loginVM.error) { error in
            if error == .credentialsNotSaved{
                return Alert(title: Text("Credentials Not Saved"), message: Text(error.localizedDescription),primaryButton: .default(Text("OK"), action: {
                    loginVM.storeCredentialsNext = true
                    
                }),
                             secondaryButton: .cancel())
            } else {
                return Alert(title: Text("Invlid Login"), message: Text(error.localizedDescription))
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
                .environmentObject(Authentication())
        }
    }
}
