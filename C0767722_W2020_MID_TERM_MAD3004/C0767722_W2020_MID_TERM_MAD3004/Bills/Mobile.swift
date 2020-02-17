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
        <#code#>
    }
    
    func display() -> String {
        <#code#>
    }
    
    
}
