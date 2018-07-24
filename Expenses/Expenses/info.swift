//
//  info.swift
//  Expenses
//
//  Created by Kevin Brennan on 6/8/18.
//  Copyright © 2018 Kevin Brennan. All rights reserved.
//

import Foundation

class Info
{
    var title: String
    var amount: Double
    var date: Date
    
    init(title: String,amount: Double,date: Date) {
        self.title = title
        self.amount = amount
        self.date = date
    }
}
