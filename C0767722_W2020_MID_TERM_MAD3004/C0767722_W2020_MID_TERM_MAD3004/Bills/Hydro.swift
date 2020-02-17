//
//  Hydro.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Hydro: Bill
{
    var billId: Int
    
    var billDate: Date?
    
    var billType: BillType
    
    var totalBillAmount: Float
    
    var agencyName : String
    var unitConsumed : Float
    let unitRate : Float = 10
    
    func display() -> String {
        <#code#>
    }
    

}
