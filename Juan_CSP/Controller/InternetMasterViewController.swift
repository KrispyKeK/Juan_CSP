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
            detailViewController = currentController[0] as? InternetDetailViewController
        }
    }
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }
    override public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier"
            , for: indexPath)
        let currentText = interenetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        return cell
    }
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier! == "showDetail"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let urlString = addresses[indexPath.row]
                let pageText: String
                if indexPath.row == 0
                {
                    pageText = "ALl the definitions you wrote/....."
                    
                }
                else{
                    pageText = interenetTopics[indexPath.row]
                }
                let controller = segue.destination as!
                    InternetDetailViewController
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return interenetTopics.count
        
    }
}
