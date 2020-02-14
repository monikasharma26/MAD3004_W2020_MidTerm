//
//  Bill.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

//Bill Class Created
class Bill
{
    // Stored Properties
    var billId : Int
    var billDate :  Date?
    var billType : BillType
    public var totalBillAmount : Float
    init()
    {
        self.billId = 0
        self.billDate = Date()
        self.billType = BillType.None
        self.totalBillAmount = 0
    }
    
    init(billId : Int,billDate : Date,billType : BillType,totalBillAmount : Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
}
