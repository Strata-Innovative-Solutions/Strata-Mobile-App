//
//  KeychainStorage.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 2/27/23.
//

import Foundation
import SwiftKeychainWrapper

enum KeychainStorage {
    static let key = "credentials"
    
    static func getCredentials() -> Credentials? {
        if let myCredentialsString = KeychainWrapper.standard.string(forKey: Self.key) {
            return Credentials.decode(myCredentialsString)
        } else {
            return nil
        }
    }
    
    static func saveCredentials(_ credentials: Credentials) -> Bool {
        if KeychainWrapper.standard.set(credentials.encoded(), forKey: Self.key){
            return true
        } else {
            return false 
        }
    }
    
}
