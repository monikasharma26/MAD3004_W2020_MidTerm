//
//  Validations.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-17.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation

//Email Validation https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift

public func isEmailValid(str:String) -> Bool {
       let regx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
       let test = NSPredicate(format:"SELF MATCHES %@", regx)
       return test.evaluate(with: str)
   }

