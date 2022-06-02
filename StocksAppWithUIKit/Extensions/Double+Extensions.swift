//
//  Double+Extensions.swift
//  StocksAppWithUIKit
//
//  Created by Ömer Faruk Kılıçaslan on 2.06.2022.
//

import Foundation


extension Double {
    func formatAsCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
