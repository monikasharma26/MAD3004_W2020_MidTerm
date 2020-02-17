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
    case Canada
    
}

// Extension Added For Countries
extension String
{
    func withCountryCode(country:Country) -> String{
        switch(country)
        {
        case Country.Canada: return "+1\(self)"
        }
    }
    
    func formatBills() -> String
    {
        var output:String = ""
        let lines = self.split(separator: "\n")
        for line in lines
        {
            output += "          \(line)\n"
        }
        return output
    }
}
