//
//  Float+Extension.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
// Extension float Added
extension Float
{
public func currency() -> String
   {
       return String(format: "$%0.2f", self)
   }
}
