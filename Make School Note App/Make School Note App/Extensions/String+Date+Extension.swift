//
//  String+Date+Extension.swift
//  Make School Note App
//
//  Created by Yveslym on 6/28/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import Foundation

extension Date
{
    func toString() -> String
    {
        let format = "dd-MM-yyyy"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
}
