//
//  InternetController.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 10/26/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit

public class InterenetMasterViewController : UITableViewController
{
    private (set) lazy var interenetTopics : [String] =
    {
        return [
        "Definitions",
        "CSP",
        "CTEC",
        "Canyons",
        "Twitter",
        "Swift Guide"]
    }()
    private var detailViewController: InterenetDetailViewControllr?
    
    private func setup() -> Void
    {
        
    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }
    override public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
