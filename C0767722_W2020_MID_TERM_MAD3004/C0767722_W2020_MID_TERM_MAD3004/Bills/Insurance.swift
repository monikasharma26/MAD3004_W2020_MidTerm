//
//  Insurance.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-17.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Insurance : Bill{
    var billId: Int
    var billDate: Date?
    var billType: BillType
    var totalBillAmount: Float{
        get
               {
                   return calculateTotal()
               }
    }
    
    var provider : String
    var Insurancetype : InsuranceType
    var startDate : Date
    var endDate : Date

    init(billId:Int, billDate:Date?,billType: BillType,provider:String, Insurancetype:InsuranceType,startDate:Date, endDate:Date){
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.provider = provider
        self.Insurancetype = Insurancetype
        self.startDate = startDate
        self.endDate = endDate
        
    }
    
    
    func calculateTotal()->Float
    {
        let interval = endDate.timeIntervalSince(startDate)
        return Float(5*interval)
    }

    func display() -> String {
        return "Bill ID: \(self.billId)\n" +
        "Bill Date: \(String(describing: (self.billDate)!.getForamttedDate()))\n" +
        "Bill Type: \(BillType.Insurance)\n" +
        "Insurance Type: \(InsuranceType.Home)\n" +
        "Duration : 12 Months \n" +
        "Insurance Start Date: \(self.startDate)\n" +
        "Insurance End Date: \(self.endDate)\n" +
        "Total Bill Amount: \(totalBillAmount.currency())\n"
       }
       
    
    
}
