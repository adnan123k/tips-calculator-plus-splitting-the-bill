//
//  Brain.swift
//  Tipsy
//
//  Created by adnan alkharfan on 13/07/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation
import UIKit
class brain {
    var pre:Float?
    var bill:String?
    var howMany:Int?
    
    public func forbill(_ b:String){
        bill=b
        
    }
    
    public func forh(_ h:Int){
        howMany=h
    }
    public func cal()->String{
        let i = Float(self.bill!)
        let j=(i! + i!*pre!)/Float(howMany!)
        return String(format: "%.2f", j)
    }
    
   public func Setter(sel:String,middle:UIButton ,start:UIButton,end:UIButton)->Float{

        if sel=="10%" {
          
            self.pre=0.1
            middle.isSelected=true
            start.isSelected=false
            end.isSelected=false
        }
        else if sel=="0%" {
            
            self.pre=0.0
            middle.isSelected=false
            start.isSelected=true
            end.isSelected=false
        }
        else {
            self.pre=0.2
            middle.isSelected=false
            start.isSelected=false
            end.isSelected=true
            
        }
 
    return self.pre!
    }
   
}
