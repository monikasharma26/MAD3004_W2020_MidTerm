//
//  CustomerSingelton.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-17.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
class CustomerSingelton
{
    static var customers = Array<Customer>()
      static func addCustomer(customer:Customer)
      {
          customers.append(customer)
      }
      static func getCustomerByID(id:Int) -> Customer?
      {
          for customer in customers
          {
              if (id == customer.customerID)
              {
                  return customer
              }
          }
          return nil
      }
      
}
