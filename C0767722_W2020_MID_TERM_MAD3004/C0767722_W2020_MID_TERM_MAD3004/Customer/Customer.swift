//
//  Customer.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class Customer : IDisplay {
    var customerID:Int
    var totalAmountToBePaid:Float
    var firstName:String
    var lastName:String
    var fullName:String
    {
        get
        {
        return "\(firstName) \(lastName)"
        }
    }
    var emailID:String?
    
    init(customerID:Int, firstName:String, lastName:String, emailID:String) throws
    {
        self.customerID = customerID
        self.firstName = firstName
        self.lastName = lastName
        if !self.isEmailValid(str: emailID)
        {
            throw CustomerError.emailInvalid
        }
        self.emailID = emailID
    }
    
}
