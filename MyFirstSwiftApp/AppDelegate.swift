//
//  AppDelegate.swift
//  MyFirstSwiftApp
//
//  Created by 罗金浩 on 2018/1/16.
//  Copyright © 2018年 罗金浩. All rights reserved.
//

import Cocoa

extension Double {
    var dollars: String {
        let formatter: NumberFormatter = NumberFormatter()
        var result: String? // 将result声明为可选的String变量
        formatter.numberStyle = NumberFormatter.Style.currency
        result = formatter.string(from: NSNumber(value : self))
        if result == nil {
            return "FORMAT FAILURE!"
        }
        return result! // 拆封可选变量
    }
}

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var loanAmountField : NSTextField!
    @IBOutlet weak var interestRateField : NSTextField!
    @IBOutlet weak var yearsField : NSTextField!
    @IBOutlet weak var resultsField : NSTextField!
    
    var simpleInterestCalculator : SimpleInterest = SimpleInterest()
    var compoundInterestCalculator : CompoundInterest = CompoundInterest()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        print("I am starting")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        print("I am terminating")
    }

    @IBAction func calculateSimpleButtonClicked(sender : NSButton) {
        var result : Double
        
        result = simpleInterestCalculator.calculate(loanAmount : loanAmountField.doubleValue, interestRate : interestRateField.doubleValue, years : yearsField.integerValue)
        self.resultsField.stringValue = result.dollars
    }
    
    @IBAction func calculateCompoundButtonClicked(sender : NSButton) {
        var result : Double
        
        result = compoundInterestCalculator.calculate(loanAmount : loanAmountField.doubleValue, interestRate : interestRateField.doubleValue, years : yearsField.integerValue)
        self.resultsField.stringValue = result.dollars
    }
}

