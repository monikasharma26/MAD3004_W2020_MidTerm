//
//  Internet.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

public class Internet : Bill
{
    var billId: Int
    var billDate: Date?
    var billType: BillType
    var totalBillAmount: Float
    {
        get
        {
            return calculateTotal()
        }
    }
    var providerName : String
    var gbUsed : Float
    let internetRate : Float = 10
    
 
    init(billId:Int, billDate:Date?,billType: BillType, providerName : String, gbUsed : Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.providerName = providerName
        self.gbUsed = gbUsed
    
    }
    
    
    func calculateTotal()->Float
    {
        var total : Float = 0
        total = self.gbUsed * self.internetRate
        return total
    }
    
    func display() -> String {
        return "Bill ID: \(self.billId)\n" +
            "Bill Date: \(String(describing: (self.billDate)!.getForamttedDate()))\n" +
            "Bill Type: \(BillType.Internet)\n" +
            "Total Bill Amount: \(totalBillAmount.currency())\n" +
            "Provider Name: \(providerName)\n" +
            "Internet Usage: \(gbUsed.internetUnit())\n"
    }
    
    
}
