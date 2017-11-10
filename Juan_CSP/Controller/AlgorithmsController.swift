//
//  AlgorithmsController.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 10/26/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//
import UIKit
public class AlgorithmsController: UIViewController{
    
    @IBOutlet weak var algorithmsText: UILabel!
    
    private func setupAlgorithms() -> Void{
        var algorithmSteps : [String] = []
        
        let algorithm: String = "These are the insturcture to create a project within Java using Eclipse and Github \n"
        let stepOne: String = "First, "
        let stepTwo: String = "Second, "
        let stepThree: String = "Third, "
        
        algorithmSteps = [stepOne, stepTwo, stepThree]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmsText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps{
            let bullet: String = "Heart"
            let formattedStep: String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0, attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        algorithmsText.attributedText = fullAttributedString
    }
    private func createParagraphStyle() -> NSParagraphStyle{
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    override public func viewDidLoad(){
        super.viewDidLoad()
        setupAlgorithms()
    }
}
