//
//  ViewController.swift
//  tip-calculator
//
//  Created by Anh Tuan on 9/2/14.
//  Copyright (c) 2014 Anh Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var tipSegment: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onChanged(sender: AnyObject) {
        updateValues()
    }

    @IBAction func tipChanged(sender: AnyObject) {
        updateValues()
    }
    
    @IBAction func onTipChanged(sender: AnyObject) {
        updateValues()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ontap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    func updateValues() {
        let percentValues = [0.15, 0.18, 0.2],
            bill = NSString(string:billField.text).doubleValue,
            percent = percentValues[tipSegment.selectedSegmentIndex],
            tip = percent * bill,
            total = bill + tip
        tipLabel.text = "$\(tip)"
        tipTotal.text = "$\(total)"
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // reload tip segment
        var defaults = NSUserDefaults.standardUserDefaults()
        tipSegment.selectedSegmentIndex = defaults.integerForKey("tipIndex");
        updateValues()
    }
}

