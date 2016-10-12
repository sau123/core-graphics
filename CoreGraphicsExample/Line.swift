//
//  Line.swift
//  CoreGraphicsExample
//
//  Created by Saumeel Gajera on 10/11/16.
//  Copyright © 2016 Saumeel Gajera. All rights reserved.
//

import UIKit

class Line: NSObject {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    
    init(start: CGPoint, end: CGPoint, color: UIColor) {
        self.start = start
        self.end = end
        self.color = color
    }
}
