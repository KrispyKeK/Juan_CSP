//
//  Drawingview.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 12/7/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit

public class DrawingView: UIViewController{
    override public func draw(_rect: CGRect)
    {
        drawingStickFigure().stroke()
        drawTurtle()
        drawHappyTree()
        
    }
    private func drawStickFigure() -> UIBezierPath(){
    let stickFigure = UIBezierPath()
    UIColor.magenta.Stroke()
    stickFigure.lineWidth = 3.0
    stickFigure.addArc(wiuenter: CGPoint(x: 200, y: 200),
        radius CGFloat(20),
        startAngle: CGFloat(0),
        endAngle: CGFloat(2) * CGFloat.pi,
        clockwise: true)
    stickFigure.move(to: CGPoint(x: 200, 220))
    stickFigure.addLine(to: CGPoint(x: 200, 270))
    stickFigure.move(to: CGPoint(x:180, 240))
    stickFigure.addLine(to: CGPoint(x: 220, 220))
    stickFigure.move(to: CGPoint(x: 200, 270))
    stickFigure.addLine(to: CGPoint(x: 200, 300))
    
    return stickFigure
    }
    public func drawHappyTree() -> Voi{
        private func drawTurtle -> Void{
            let logo = UIBezierPath()
            logo.move(to: CGPoint(x: 50, y: 250))
            logo.addLine(to: CGPoint(x: 100, y: 300))
            logo.addLine(to: CGPoint(x: 50, y: 350))
            logo.close()
            logo.fil()
        }
    }
}
