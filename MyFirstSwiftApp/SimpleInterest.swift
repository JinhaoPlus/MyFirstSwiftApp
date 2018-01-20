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
        var realInterestRate = interestRate / 100.0
        realInterestRate = Double(years) * realInterestRate * loanAmount
        return loanAmount + realInterestRate
    }
}
