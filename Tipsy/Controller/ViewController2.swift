//
//  ViewController2.swift
//  Tipsy
//
//  Created by adnan alkharfan on 13/07/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var theText: UILabel!
    var totalNumer=""
    var howMany=0
    var tip=""
    override func viewDidLoad() {
        super.viewDidLoad()
        total.text=totalNumer
        theText.text="Split between \(howMany) people, with \(Float(tip)!*100)% tip"
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func rec(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
