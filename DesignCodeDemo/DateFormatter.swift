//
//  DateFormatter.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 3/3/21.
//

import Foundation

extension Date  {
    
    func formatDate() -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMM d")
        return dateFormatter.string(from: self)
        
    }
}
