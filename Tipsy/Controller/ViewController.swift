//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var howMany: UILabel!
let be=brain()
    var per:Float=0.1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var middle: UIButton!
    
    @IBOutlet weak var start: UIButton!
    
    @IBOutlet weak var end: UIButton!
    @IBAction func thePrecentege(_ sender: UIButton) {
        bill.endEditing(true)
       per = be.Setter(sel:(sender.titleLabel?.text)!, middle:middle, start:start, end:end)
     
    }
    @IBAction func moreOrLess(_ sender: UIStepper) {
        bill.endEditing(true)
        howMany.text=String(Int(sender.value))
    }
    @IBAction func cal(_ sender: UIButton) {
        bill.endEditing(true)
        be.Setter(sel:"\(Int(per*100))%", middle:middle, start:start, end:end)
        let i = Int(howMany.text!)
        be.forh(i!)
        be.forbill(bill.text!)
        self.performSegue(withIdentifier: "gotoc", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="gotoc" {
            let sv=segue.destination as! ViewController2
            sv.howMany=be.howMany!
            sv.tip=String(be.pre!)
            sv.totalNumer=be.cal()
            
    }
    }
    
}

