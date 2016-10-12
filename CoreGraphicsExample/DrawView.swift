//
//  DrawView.swift
//  CoreGraphicsExample
//
//  Created by Saumeel Gajera on 10/11/16.
//  Copyright © 2016 Saumeel Gajera. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var lines: [Line] = []
    var lastPoint: CGPoint!
    var _color = UIColor.blackColor()
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        lastPoint = touches.first?.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let tempPoint = touches.first?.locationInView(self)
        lines.append(Line(start: lastPoint, end: tempPoint!, color: _color))
        lastPoint = tempPoint
        
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, 5)
        CGContextSetLineCap(context, CGLineCap.Round)

        for line in lines{
            CGContextBeginPath(context)
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
            CGContextSetStrokeColorWithColor(context, line.color.CGColor)
            CGContextStrokePath(context)
        }
        
    }
    
}
