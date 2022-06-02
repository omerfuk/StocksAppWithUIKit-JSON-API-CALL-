//
//  Stock.swift
//  StocksAppWithUIKit
//
//  Created by Ömer Faruk Kılıçaslan on 2.06.2022.
//

import Foundation


struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
}
