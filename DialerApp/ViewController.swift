//
//  ViewController.swift
//  DialerApp
//
//  Created by Andrew Lien on 4/8/15.
//  Copyright (c) 2015 Andrew Lien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dialerLabel: UILabel!
    var dialNum = "";
    var maxDigits = 12;
    func checkNoNum(){
        var alert = UIAlertController(title: "Hey!", message: "You ran out of numbers to delete!!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    func checkMaxNum(){
        var alert = UIAlertController(title: "Hey!", message: "You can only enter up to a maximum of 12 numbers!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        }
    
    @IBAction func one(sender: AnyObject) {
        
        if(countElements(dialNum) < maxDigits) { dialNum += "1";}else{ checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    
    @IBAction func two(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "2";}else{ checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    
    @IBAction func three(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "3";}else{ checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    @IBAction func four(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "4";}else{ checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    
    @IBAction func five(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "5"; }else{checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    
    @IBAction func six(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "6";}else{ checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    @IBAction func seven(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "7"; }else{checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    
    @IBAction func eight(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "8";}else{ checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    
    @IBAction func nine(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "9";}else{ checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    
    @IBAction func hashTag(sender: AnyObject) {
        if(countElements(dialNum) > 0){
            dialNum = dialNum.substringToIndex(dialNum.endIndex.predecessor());
            dialerLabel.text=dialNum;
        }else{ checkNoNum(); }
    }
    
    @IBAction func call(sender: AnyObject) {
        dialerLabel.text = nil;
        dialNum = "";
        
        
    }
    
    @IBAction func zero(sender: AnyObject) {
        if(countElements(dialNum) < maxDigits) { dialNum += "0";}else{ checkMaxNum();}
        dialerLabel.text = dialNum;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

