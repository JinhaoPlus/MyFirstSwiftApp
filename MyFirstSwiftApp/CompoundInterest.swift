//
//  CompoundInterest.swift
//  MyFirstSwiftApp
//
//  Created by jinhaoluo on 2018/1/21.
//  Copyright © 2018年 罗金浩. All rights reserved.
//

import Foundation

class CompoundInterest {
    func calculate(loanAmount: Double, interestRate: Double, years: Int) -> Double {
//        let realInterestRate = interestRate / 100.0
        let compoundMultiplier = pow(1.0 + interestRate, Double(years))
        return loanAmount * compoundMultiplier
    }
}
