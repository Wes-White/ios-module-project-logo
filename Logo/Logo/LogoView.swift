//
//  LogoView.swift
//  Logo
//
//  Created by Wesley Ryan on 4/15/20.
//  Copyright © 2020 Wesley Ryan. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    
    override init(frame: CGRect) {
             super.init(frame: frame)
             backgroundColor = UIColor.clear
         }
         
         required init?(coder aDecoder: NSCoder) {
             super.init(coder: aDecoder)
             backgroundColor = UIColor.clear
         }
        
         
        override func draw(_ rect: CGRect) {
            if let context = UIGraphicsGetCurrentContext() {
                
                //MARK: Rectangle
                let rectangle = CGRect(x: rect.minX, y: rect.minY, width: rect.width, height: (rect.height / 3) * 2)
                let roundedPath = CGPath(roundedRect: rectangle,
                                            cornerWidth: 6.0,
                                            cornerHeight: 6.0,
                                            transform: nil)
                context.addPath(roundedPath)
                context.setFillColor(UIColor.red.cgColor)
                context.fillPath()
                
                
            }
        }

    }
