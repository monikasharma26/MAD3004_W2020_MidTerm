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
    public var floatValue: Float {
        return (self as NSString).floatValue
    }
    
    var isValidNumber: Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == count && count == 10
            } else {
                return false
            }
        } catch {
            return false
        }
    }
    
    var isValidEmail: Bool {
        return NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }

}
