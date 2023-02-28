//
//  Credentials.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 2/25/23.
//

import Foundation

struct Credentials: Codable {
    var email: String = ""
    var password: String = ""
    func encoded() -> String {
        let encoder = JSONEncoder()
        let credentialsData = try! encoder.encode(self)
        return String(data: credentialsData, encoding: .utf8)!
    }
    
    static func decode(_ credentialsString: String) -> Credentials {
        let decoder = JSONDecoder()
        let jsonData = credentialsString.data(using: .utf8)
        return try! decoder.decode((Credentials.self), from: jsonData!)
    }
}
