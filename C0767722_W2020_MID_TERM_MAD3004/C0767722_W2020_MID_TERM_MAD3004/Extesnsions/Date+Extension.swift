//
//  Date+Extension.swift
//  C0767722_W2020_MID_TERM_MAD3004
//
//  Created by S@i on 2020-02-14.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
extension Date
{
    public func getForamttedDate() -> String
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "EEEE, dd-MM-YYYY"
        let formattedDate = dateFormatterPrint.string(from: self)
        return formattedDate
    }
    
    public static func from(year: Int, month: Int, day: Int) -> Date? {
        let calendar = Calendar(identifier: .gregorian)
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        return calendar.date(from: dateComponents) ?? nil
    }
   public static func dateDifference(startDate: Date, endDate: Date) -> String {
       let formatter = DateComponentsFormatter()
       formatter.allowedUnits = [.month]
       formatter.unitsStyle = .full
       if let differenceString = formatter.string(from: startDate, to: endDate) {
           return differenceString
       }
       return "No Date Found"
   }
   
}
