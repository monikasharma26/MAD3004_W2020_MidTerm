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
    var totalAmountToBePaid:Float = 0
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
    
   private lazy var customerBills = [Int:Bill]()
    
    //property added to calculate the total amount to be paid by customer.
    var totalAmountToBePaidByCustomer:Float
        {
            get
            {
                if customerBills.count == 0
                {
                    return 0
                }
                for bill in customerBills.values
                {
                    totalAmountToBePaid += bill.totalBillAmount
                }
                return totalAmountToBePaid
            }
         }
    
    init(customerID:Int, firstName:String, lastName:String, emailID:String) throws
    {
        self.customerID = customerID
        self.firstName = firstName
        self.lastName = lastName
      if !isEmailValid(str: emailID)
        {
            throw CustomerError.emailInvalid
        }
        self.emailID = emailID
    }
    
    public func addBillToCustomer(bill: Bill)
    {
        customerBills.updateValue(bill, forKey: bill.billId)
    }
    
    func display() -> String {
            var output =  "Customer ID: \(customerID)\n" +
                "Customer Full Name: \(fullName)\n"
                if let email = emailID, email.isValidEmail {
                   output +=  "Customer Email ID: \(emailID!)\n"
                } else {
                  output +=  "Please enter correct email address"
                }
           
            if customerBills.count == 0
            {
                output += "Customer Has No Bills."
                return output
            }

         output += "\n            --Bill Information--\n" + "*************************\n".formatBills()
        for customerBill in customerBills.values
            {
                output += ( (customerBill.display()).formatBills() + "\n")
                output += "***********************************************\n".formatBills()
        }

            output += "                 Total Amount To Be Paid \(totalAmountToBePaidByCustomer.currency())\n" +
                "***********************************************\n".formatBills()
            
            
            return output
        }
       
    
}
