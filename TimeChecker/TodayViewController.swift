//
//  TodayViewController.swift
//  TimeChecker
//
//  Created by demyan on 2016. 3. 9..
//  Copyright © 2016년 ss.strongstring. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet weak var currentWorkLabel: UILabel!
    @IBOutlet weak var nextWorkLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var nextTimeLabel: UILabel!
    @IBOutlet weak var checkerButtonOutlet: UIButton!
    
    @IBAction func checkerButtonAction(sender: AnyObject) {
        print("\(__FUNCTION__): clicked")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
//        self.preferredContentSize = CGSizeMake(0, 70)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}
