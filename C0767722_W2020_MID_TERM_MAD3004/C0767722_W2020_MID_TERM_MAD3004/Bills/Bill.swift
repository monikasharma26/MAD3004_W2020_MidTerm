//
//  Bill.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation


protocol Bill : IDisplay
{
    var billId : Int { get set}
    var billDate :  Date? {get set}
    var billType : BillType {get}
    var totalBillAmount : Float {get }
    func calculateTotal() -> Float
    
}

func display() -> String
{
        return ""
}

func calculateTotal()->Float
{
    let total : Float = 0
   // totalBillAmount = total
    return total

}
