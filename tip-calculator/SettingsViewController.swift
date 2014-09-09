//
//  SettingsViewController.swift
//  tip-calculator
//
//  Created by Anh Tuan on 9/8/14.
//  Copyright (c) 2014 Anh Tuan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults = NSUserDefaults.standardUserDefaults()
        defaultTipSegment.selectedSegmentIndex = defaults.integerForKey("tipIndex");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func onSave(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipSegment.selectedSegmentIndex, forKey: "tipIndex")
        defaults.synchronize()
        dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
