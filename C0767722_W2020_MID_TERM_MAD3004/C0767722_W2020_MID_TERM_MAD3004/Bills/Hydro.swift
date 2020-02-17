//
//  Hydro.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Hydro: Bill{
    var billId: Int
    var billDate: Date?
    var billType: BillType
    var totalBillAmount: Float{
        get
        {
            return calculateTotal()
        }
    }
    var agencyName : String
    var unitConsumed : Float
    let unitRate : Float = 10
    
    
    init(billId:Int, billDate:Date?,billType: BillType, agencyName : String, unitConsumed : Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
    
    }
    
    func calculateTotal() -> Float {
            var total : Float = 0
            total = self.unitConsumed * self.unitRate
            return total
        }
    
    
    func display() -> String {
        return " "
    }
    
}

