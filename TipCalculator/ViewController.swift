//
//  ViewController.swift
//  TipCalculator
//
//  Created by Chih-Hong Pang on 2016-04-30.
//  Copyright © 2016 chihhongpang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tip: UITextField!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var tipPerPerson: UILabel!
    @IBOutlet weak var totalPerPerson: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.bill.text = "50"
        self.tip.text = "6"
        self.numberOfPeople.text = "3"
        self.tipPerPerson.text = calculateTipPerPerson(self.tip.text!, person: self.numberOfPeople.text!)
        self.totalPerPerson.text = calculateTotalPerPerson(self.bill.text!, tip: self.tip.text!, person: self.numberOfPeople.text!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func calculateTipPerPerson(tip: String, person: String) -> String {
        let tipInt:Int! = Int(tip)
        let personInt:Int! = Int(person)
        let tipPerPersonInt:Int! = tipInt! / personInt!
        return String(tipPerPersonInt)
    }
    
    func calculateTotalPerPerson(bill: String, tip: String, person: String) -> String {
        let billInt:Int! = Int(bill)
        let tipInt:Int! = Int(tip)
        let total = billInt + tipInt
        let personInt:Int! = Int(person)
        let totalPerPersonInt:Int! = total / personInt!
        return String(totalPerPersonInt)
    }

}

