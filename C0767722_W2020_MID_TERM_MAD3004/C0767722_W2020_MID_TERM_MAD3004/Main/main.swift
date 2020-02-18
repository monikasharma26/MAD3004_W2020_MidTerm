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
let customer1BillInternet = Internet(billId: 1001, billDate: Date.from(year: 2019, month: 10, day: 11)!,billType: BillType.Internet,   providerName:"Fido", gbUsed: 7)
    
    let customer1BillHydro = Hydro(billId: 1002, billDate: Date.from(year: 2020, month: 01, day: 12)!,billType: BillType.Hydro,agencyName: "Brampton power", unitConsumed: 21)
    
    let customer1BillMobile = try Mobile(billId: 1003,billDate: Date.from(year: 2020, month: 02, day: 02)!,billType: BillType.Mobile, mobileManufacturerName: "Apple Inc.", planName: "Medium Gig", mobileNumber: "4378766823", internetGBUsed: 4, minutesUsed: 40)
    
   //creating object for insurance
    let customer1BillInsurance = Insurance(billId: 1004,billDate: Date.from(year: 2020, month: 02, day: 12)!,billType: BillType.Insurance,provider: "HDFC", Insurancetype: InsuranceType.Home, startDate: Date.from(year: 2019, month: 01, day: 31)!, endDate: Date.from(year: 2020, month: 01, day: 31)! )

    // Created Objects For Customer 2 with 3 bills
    let customer2BillMobile = try Mobile(billId: 1005,billDate: Date.from(year: 2019, month: 10, day: 09)!,billType: BillType.Mobile ,mobileManufacturerName: "Google Pixel", planName: "VOLTE", mobileNumber: "9888439826", internetGBUsed: 2, minutesUsed: 60)
    
    let customer2BillHydro = Hydro(billId: 1006,billDate: Date.from(year: 2020, month: 01, day: 10)!,billType: BillType.Hydro, agencyName: "Pickering", unitConsumed: 90)
    
    let customer2BillInternet = Internet(billId: 1007,billDate: Date.from(year: 2019, month: 08, day: 01)!,billType: BillType.Internet ,providerName: "Dell", gbUsed: 6)
    

    // Created Objects For Customer 3 with 2 bills
    let customer3BillMobile = try Mobile(billId: 1008,billDate: Date.from(year: 2019, month: 11, day: 19)!,billType: BillType.Mobile ,mobileManufacturerName: "Samsung", planName: "BigGig", mobileNumber: "6562341234", internetGBUsed: 8, minutesUsed: 80)
    
    let customer3BillHydro = Hydro(billId: 1009,billDate: Date.from(year: 2020, month: 01, day: 10)!,billType: BillType.Hydro, agencyName: "Toronto Power", unitConsumed: 40)

    // Created Objects For Customer 4 with 1 bill
    let customer4BillMobile = try Mobile(billId: 1010,billDate: Date.from(year: 2020, month: 01, day: 30)!,billType: BillType.Mobile ,mobileManufacturerName: "One Plus", planName: "Fido", mobileNumber: "4563243456", internetGBUsed: 1, minutesUsed: 160)

    // Crated First Customer
    let customer1 =  try Customer(customerID: 101, firstName: "Monika", lastName: "Sharma", emailID: "monika@gmail.com")
    
    //Added 4 Bill To Customer1
    customer1.addBillToCustomer(bill: customer1BillMobile)
    customer1.addBillToCustomer(bill: customer1BillHydro)
    customer1.addBillToCustomer(bill: customer1BillInternet)
    customer1.addBillToCustomer(bill: customer1BillInsurance)
    
     
    let customer2 = try Customer(customerID: 102, firstName: "Ikroop", lastName: "virk", emailID: "roop@gmail.com")
    //Added 3 Bill To Customer2
    customer2.addBillToCustomer(bill: customer2BillHydro)
    customer2.addBillToCustomer(bill: customer2BillMobile)
    customer2.addBillToCustomer(bill: customer2BillInternet)
    
    let customer3 = try Customer(customerID: 103, firstName: "Kritima", lastName: "Kukreja", emailID: "kritima@gmail.com")
    //Added 2 Bill To Customer3
    customer3.addBillToCustomer(bill: customer3BillHydro)
    customer3.addBillToCustomer(bill: customer3BillMobile)
    
    let customer4 = try Customer(customerID: 104, firstName: "Aman", lastName: "Kaur", emailID: "aman@gmail.com")
     //Added 1 Bill To Customer4
    customer4.addBillToCustomer(bill: customer4BillMobile)
        
    let customer5 = try Customer(customerID: 106, firstName: "Anmol", lastName: "Singh", emailID: "anmol@gmail.com")
    Customer.addCustomer(customer: customer1)
    Customer.addCustomer(customer: customer2)
    Customer.addCustomer(customer: customer3)
    Customer.addCustomer(customer: customer4)
    Customer.addCustomer(customer: customer5)
    
    //Remove Particular Customer
    //Customer.removeCustomer(customer: customer5)
    let customerIDs = [101,102,103,104,105,106]
   // get Customer By ID
    for customerID in customerIDs
    {
        if let customer = Customer.getCustomerByID(id: customerID)
        {
            print(customer.display())
            print("\n\n")
        }
        else{
            print("Customer Not Found: Customer ID: \(customerID)\n\n")
        }
    }
    //Display Sorted Customer With TotalBil
     Customer.sortCustomerUsingTotal()
    
    print("\n\n\n")
    
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
    


