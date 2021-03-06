//
//  DatePickerView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 5/3/21.
//

import SwiftUI

struct DatePickerView: View {
    
    @State var selectedDate = Date()
    
    var body: some View {
        VStack {
            
            DatePicker("Select a date", selection: $selectedDate)
                       //, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .font(.title3)
                .padding()
            
            
        }
        
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
