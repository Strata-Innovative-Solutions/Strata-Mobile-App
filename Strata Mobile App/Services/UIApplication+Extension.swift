//
//  UIApplication+Extension.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 2/25/23.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
