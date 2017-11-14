//
//  ImpactController.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 10/26/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit

public class ImpactController: UIViewController{
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var LabelViewer: UILabel!
    @IBOutlet weak var popupImage: UIImageView!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    private func setupAssets() -> Void{
        popupImage.image = UIImage(named: "womanApp_plan")
        self.labelTwo.text = "Our app is a planned to survey the particpant and ask them for their job title, and salary."
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override public func viewDidLoad(){
        super.viewDidLoad()
        setupAssets()
    }
}
