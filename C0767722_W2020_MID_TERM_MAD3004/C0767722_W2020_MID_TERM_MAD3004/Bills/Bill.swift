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
    var billType : BillType {get set}
    var totalBillAmount : Float {get set}
    
}

func display()
{
        
}

func calculateTotal()->Float
{
    let total : Float = 0
    self.totalBillAmount = total
    return total
}


