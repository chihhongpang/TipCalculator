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
    
    @IBAction func submit(sender: UIButton) {
        self.tipPerPerson.text = calculateTipPerPerson(self.tip.text!, person: self.numberOfPeople.text!)
        self.totalPerPerson.text = calculateTotalPerPerson(self.bill.text!, tip: self.tip.text!, person: self.numberOfPeople.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.bill.text = "50"
        self.tip.text = "6"
        self.numberOfPeople.text = "3"
        self.tipPerPerson.text = calculateTipPerPerson(self.tip.text!, person: self.numberOfPeople.text!)
        self.totalPerPerson.text = calculateTotalPerPerson(self.bill.text!, tip: self.tip.text!, person: self.numberOfPeople.text!)
        //let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        //view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func calculateTipPerPerson(tip: String, person: String) -> String {
        let tipInt:Double! = Double(tip)
        let personInt:Double! = Double(person)
        let tipPerPersonInt:Double! = tipInt! / personInt!
        return String(tipPerPersonInt)
    }
    
    func calculateTotalPerPerson(bill: String, tip: String, person: String) -> String {
        let billInt:Double! = Double(bill)
        let tipInt:Double! = Double(tip)
        let total = billInt + tipInt
        let personInt:Double! = Double(person)
        let totalPerPersonInt:Double! = total / personInt!
        return String(totalPerPersonInt)
    }

}

