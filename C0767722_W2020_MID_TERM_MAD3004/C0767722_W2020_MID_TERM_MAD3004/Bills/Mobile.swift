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
    var mobileManufacturerName:String
    var planName:String
    var mobileNumber:String
    var internetGBUsed:Float
    var minutesUsed:Float
    let internetRate : Float = 10
    let minuteRate : Float = 0.5
    
    init(billId:Int, billDate:Date?,billType: BillType,mobileManufacturerName:String, mobilePlanName:String, mobileNumber:String, internetDataUsed:Float, minutesUsed:Float){
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.mobileManufacturerName = mobileManufacturerName
        self.mobilePlanName = mobilePlanName
        self.mobileNumber = mobileNumber
        self.internetDataUsed = internetDataUsed
        self.minutesUsed = minutesUsed
        
    }
    
    func calculateTotal() -> Float {
            var total : Float = 0
            total = (internetGBused * self.internetRate) + ( Float(minuteUsed) * minuteRate )
            return total
        }
    }
    
    func display() -> String {
       return "Bill ID: \(self.billId)\n" +
       "Bill Date: \(String(describing: (self.billDate)!.getForamttedDate()))\n" +
       "Bill Type: \(BillType.Internet)\n" +
        "Mobile Manufacturer Name: \(self.mobileManufacturerName)\n" +
        "Mobile Plan Name: \(self.mobilePlanName)\n" +
        "Mobile Number: \(self.mobileNumber)\n" +
        "Internet Data Used: \(self.gbUsed.internetUnit())\n" +
        "Mintues Used: \(self.minutesUsed.minUnit())\n" +
        "Total Bill Amount: \(self.totalBillAmount.currency())\n"ß
    }
    
    
}
