//
//  SimpleInterest.swift
//  MyFirstSwiftApp
//
//  Created by 罗金浩 on 2018/1/17.
//  Copyright © 2018年 罗金浩. All rights reserved.
//

import Foundation

class SimpleInterest {
    func calculate(loanAmount : Double, interestRate : Double, years : Int) -> Double {
//        let realInterestRate = interestRate / 100.0
        let interest = Double(years) * interestRate * loanAmount
        return loanAmount + interest
    }
}
