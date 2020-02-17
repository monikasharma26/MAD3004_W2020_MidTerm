//
//  String+Extension.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-16.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
enum Country
{
    case Canada, India, US
    
}

// Extension Added For Countries
extension String
{
    func withCountryCode(country:Country) -> String{
        switch(country)
        {
        case Country.Canada: return "+1\(self)"
        case Country.India: return "+91\(self)"
        case Country.US: return "+1\(self)"
        }
}
}
