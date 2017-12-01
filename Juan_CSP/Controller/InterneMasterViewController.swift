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
    private lazy var addresses : [String] = []
    private var detailViewController: InternetDetailViewController?
    private func setup() -> Void
    {
        addresses = ["https://google.com","https://google.com","https://google.com","https://google.com","https://google.com"]
        if let splitView = splitViewController{
            let currentController = splitView.viewControllers
            detailViewControlelr = currentController[0] as? InternetDetailViewController
        }
    }
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }
    private
    override public func numberOfSections(_ tableView: UITableView) -> Int
    {
        return 1
    }
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return interenetTopics.count
    }
}
