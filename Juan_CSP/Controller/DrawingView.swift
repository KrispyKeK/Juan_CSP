//
//  Drawingview.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 12/7/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit

public class DrawingView: UIView{
    override public func draw(_ rect: CGRect)
    {
        drawStickFigure().stroke()
        drawTurtle()
        drawHappyTree()
        
    }
    private func drawStickFigure() -> UIBezierPath{
        let stickFigure = UIBezierPath()
        UIColor.magenta.setStroke()
        stickFigure.lineWidth = 3.0
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
            radius: CGFloat(20),
            startAngle: CGFloat(0),
            endAngle: CGFloat(2) * CGFloat.pi,
            clockwise: true)
        stickFigure.move(to: CGPoint(x: 200,y: 220))
        stickFigure.addLine(to: CGPoint(x: 200,y: 270))
        stickFigure.move(to: CGPoint(x:180,y: 240))
        stickFigure.addLine(to: CGPoint(x: 220,y: 220))
        stickFigure.move(to: CGPoint(x: 200,y: 270))
        stickFigure.addLine(to: CGPoint(x: 200,y: 300))
    
        return stickFigure
    }
    public func drawHappyTree() -> Void{
        let guy = UIBezierPath()
        guy.move(to: CGPoint(x: 120, y: 50))
        guy.addLine(to: CGPoint(x: 120, y: 50))
        guy.addLine(to: CGPoint(x: 120, y: 50))
        guy.close()
        UIColor(patternImage: UIImage(named: "cute")!).setFill()
        UIColor.brown.setStroke()
        guy.lineWidth = 2.0
        guy.fill()
        guy.stroke()
        
        let happyTree = UIBezierPath()
        
        UIColor.green.setFill()
        UIColor.green.setFill()
        happyTree.move(to: CGPoint(x: 110,y: 150))
        happyTree.addLine(to: CGPoint(x: 150,y: 200))
        happyTree.addLine(to: CGPoint(x: 10,y: 200))
        happyTree.addLine(to: CGPoint(x: 50,y: 150))
        happyTree.close()
        happyTree.close()
        happyTree.stroke()
        happyTree.fill()
        happyTree.move(to: CGPoint(x: 80, y: 200))
        happyTree.addLine(to: CGPoint(x: 80,y: 250))
        happyTree.lineWidth = 6.0
        happyTree.stroke()
    }
    private func drawTurtle() -> Void{
        
    }
}
