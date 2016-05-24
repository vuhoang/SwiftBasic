//: Playground - noun: a place where people can play

import UIKit

class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1 )
    }
    
}
