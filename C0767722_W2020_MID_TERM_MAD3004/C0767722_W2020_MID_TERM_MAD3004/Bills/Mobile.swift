//
//  Mobile.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class  Mobile : Bill {
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
    var mobileManufacturerName:String
    var planName:String
    var mobileNumber:String!
    
    var internetGBUsed:Float
    var minutesUsed:Float
    let internetRate : Float = 10
    let minuteRate : Float = 0.5
    
    init(billId:Int, billDate:Date?,billType: BillType,mobileManufacturerName:String, planName:String, mobileNumber:String, internetGBUsed:Float, minutesUsed:Float) throws{
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        if mobileNumber.count != 10
        {
            throw CustomerError.mobileInvalid
        }
        self.mobileNumber=mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minutesUsed = minutesUsed
        
    }
    
    func calculateTotal() -> Float {
            var total : Float = 0
            total = (internetGBUsed * self.internetRate) + ( Float(minutesUsed) * minuteRate )
            return total
        }
    
    
    func display() -> String {
       return "Bill ID: \(self.billId)\n" +
       "Bill Date: \(String(describing: (self.billDate)!.getForamttedDate()))\n" +
        "Bill Type: \(BillType.Internet)\n" +
        "Mobile Manufacturer Name: \(self.mobileManufacturerName)\n" +
        "Mobile Plan Name: \(self.planName)\n" +
        "Mobile Number: \(self.mobileNumber!)\n" +
        "Internet Data Used: \(self.internetGBUsed.internetUnit())\n" +
        "Mintues Used: \(self.minutesUsed.minUnit())\n" +
        "Total Bill Amount: \(self.totalBillAmount.currency())\n"
    }
    
    

}
