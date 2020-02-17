//
//  main.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-13.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

do
{
    
    let bill1 = Internet(billId: 1001, billDate: Date.from(year: 2000, month: 11, day: 12)!,billType: BillType.Internet,   providerName:"Fido", gbUsed: 10)
    
    let bill2 = Hydro(billId: 1003, billDate: Date.from(year: 2000, month: 11, day: 12)!,billType: BillType.Hydro,agencyName: "Northyork power", unitConsumed: 210)
    
    let bill3 = try Mobile(billId: 1002,billDate: Date.from(year: 2000, month: 11, day: 12)!,billType: BillType.Mobile, mobileManufacturerName: "Apple Inc.", planName: "Medium Gig", mobileNumber: "4379716883", internetGBUsed: 10, minutesUsed: 400)
    
    let bill4 = try Mobile(billId: 1004,billDate: Date.from(year: 2000, month: 11, day: 12)!,billType: BillType.Mobile ,mobileManufacturerName: "Google Pixel", planName: "VOLTE", mobileNumber: "9888439826", internetGBUsed: 10, minutesUsed: 80)
    
    let bill5 = Hydro(billId: 1005,billDate: Date.from(year: 2000, month: 11, day: 12)!,billType: BillType.Hydro, agencyName: "TSSPDCL", unitConsumed: 490)
    
    let bill6 = Internet(billId: 1006,billDate: Date.from(year: 2000, month: 11, day: 12)!,billType: BillType.Internet ,providerName: "Bell", gbUsed: 23)
    
    let customer1 = try Customer(customerID: 101, firstName: "Monika", lastName: "Sharma", emailID: "monika@gmail.com")
    
    //creating object for insurance
    let bill7 = Insurance(billId: 1007,billDate: Date.from(year: 2000, month: 11, day: 12)!,billType: BillType.Insurance,provider: "HDFC", Insurancetype: InsuranceType.Home, startDate: Date.from(year: 2000, month: 11, day: 11)!, endDate: Date.from(year: 2001, month: 12, day: 12)! )
    
    customer1.addBillToCustomer(bill: bill1)
    customer1.addBillToCustomer(bill: bill2)
    customer1.addBillToCustomer(bill: bill3)
    customer1.addBillToCustomer(bill: bill7)
    
    let customer2 = try Customer(customerID: 102, firstName: "Ikroop", lastName: "virk", emailID: "roop@gmail.com")
    
    customer2.addBillToCustomer(bill: bill4)
    customer2.addBillToCustomer(bill: bill5)
    
    let customer3 = try Customer(customerID: 103, firstName: "Kritima", lastName: "Kukreja", emailID: "kritima@outlook.com")
    
    customer3.addBillToCustomer(bill: bill6)
    
    CustomerSingelton.addCustomer(customer: customer1)
    CustomerSingelton.addCustomer(customer: customer2)
    CustomerSingelton.addCustomer(customer: customer3)
    CustomerSingelton.addCustomer(customer: try Customer(customerID: 104, firstName: "Aman", lastName: "Kaur", emailID: "aman@gmail.com"))
    
    
    let customerIDs = [101,102,103,104,105]
    for customerID in customerIDs
    {
        if let customer = CustomerSingelton.getCustomerByID(id: customerID)
        {
            print(customer.display())
            print("\n\n")
        }
        else{
            print("Customer Not Found: Customer ID: \(customerID)\n\n")
        }
    }
}
catch CustomerError.emailInvalid
{
    print("Email is Invalid")
}
catch CustomerError.mobileInvalid
{
    print("Mobile Number is Invalid")
}
catch
{
    print("Error Occured")
}
