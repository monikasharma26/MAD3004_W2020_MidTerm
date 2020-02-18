//
//  Validations.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-17.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

//Email Validation https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift

public func isvalidPhoneNumber() -> Bool
{
    var flag = false
    if self.count==10 {
        let number = Int(self)
        if number != nil {
            
            flag = true
        }
    }
    return flag
}

func isValidEmail() -> Bool
{
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: self)
}


