//
//  main.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-13.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

//let dateFormatter = get

//var c1bill2 = Internet(billId: 2, billDate: "12/10/12", billType: BillType.Internet, providerName: "Rogers", internetGBused: 500)

var d = Internet(billId: 2, billDate: Date.from(year: 2000, month: 11, day: 12), billType: BillType.Internet, providerName: "Rogers", gbUsed: 500)

print(d.display())
