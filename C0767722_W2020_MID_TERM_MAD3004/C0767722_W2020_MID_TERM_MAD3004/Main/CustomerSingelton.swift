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
    
    static var custDictionary = [Int: Customer]()
    
      
    
      static func getCustomerByID(id:Int) -> Customer?
      {
          for (k,v) in custDictionary
          {
             if id == k
              {
                return v
              }
            
          }
          return nil
      }
    static func sortCustomerUsingTotal() {
           print("")
           print("Customer details Sorted total bill to be paid\n")
           let customers = custDictionary.sorted(by: {a,b in
               return a.value.totalAmountToBePaidByCustomer > b.value.totalAmountToBePaidByCustomer
           })
           
           for newList in customers{
               newList.value.displayNameSortedByTotal()
           }
       }
        
    
      
}
