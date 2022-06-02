//
//  StockListViewModel.swift
//  StocksAppWithUIKit
//
//  Created by Ömer Faruk Kılıçaslan on 2.06.2022.
//

import Foundation

class StockListViewModel {
    
    private(set) var stocks: [StockViewModel] = []
    
    func populateStocks(url:URL) async {
        do{
           let stocks = try await  Webservice().getStocks(url: url)
            self.stocks = stocks.map(StockViewModel.init)
        }
        catch{
            print(error)
        }
    }
}

struct StockViewModel {
    private let stock: Stock
    
    init(stock: Stock) {
        self.stock = stock
    }
    
    var symbol:String {
        stock.symbol
    }
    
    var description: String {
        stock.description
    }
    
    var price: Double {
        stock.price
    }
}
