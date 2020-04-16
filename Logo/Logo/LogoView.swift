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
                
                
                
                //MARK: Bottom Triangle
                let leftCorner = CGPoint(x: rectangle.minX + 5, y: rectangle.maxY)
                let rightCorner = CGPoint(x: rectangle.maxX - 5, y: rectangle.maxY)
                let centerBottom = CGPoint(x: rect.midX + 2, y: rect.maxY - 2)
                let centerBottomLeft = CGPoint(x: rect.midX - 10, y: rect.maxY - 10)
                let centerBottomRight = CGPoint(x: rect.midX + 10, y: rect.maxY - 10)
                context.setStrokeColor(UIColor.black.cgColor)
                context.beginPath()
                context.move(to: leftCorner)
                context.addLine(to: centerBottomLeft)
                context.addQuadCurve(to: centerBottomRight, control: centerBottom)
                context.addLine(to: rightCorner)
                context.addLine(to: leftCorner)
                context.closePath()
                context.setFillColor(UIColor.red.cgColor)
                context.fillPath()
                context.strokePath()

                
                
                //MARK: LAMBDA LOGO
                let center = CGPoint(x: rectangle.midX, y: rectangle.midY)
                context.setStrokeColor(UIColor.white.cgColor)
                context.beginPath()
                context.move(to: center)
                context.setLineWidth(5)
                context.addLine(to: CGPoint(x: rectangle.midX - 50, y: rectangle.midY + 70))
                let leftLogoCorner = CGPoint(x: rectangle.midX - 85, y: rectangle.midY + 70)
                context.addLine(to: CGPoint(x: rectangle.midX - 75, y: rectangle.midY + 70))
                context.addQuadCurve(to: CGPoint(x: rectangle.midX - 85, y: rectangle.midY + 70), control: leftLogoCorner)
                context.addLine(to: CGPoint(x: rectangle.midX - 20, y: rectangle.midY - 30))
                context.addLine(to: CGPoint(x: rectangle.midX + 20, y: rectangle.midY - 30))
                let rightLogoCorner = CGPoint(x: rectangle.midX + 85, y: rectangle.midY + 70)
                context.addLine(to: CGPoint(x: rectangle.midX + 85, y: rectangle.midY + 60))
                context.addQuadCurve(to: CGPoint(x: rectangle.midX + 75, y: rectangle.midY + 70), control: rightLogoCorner)
                context.addLine(to: CGPoint(x: rectangle.midX + 50, y: rectangle.midY + 70))
                context.addLine(to: center)
                context.setFillColor(UIColor.white.cgColor)
                context.closePath()
                context.fillPath()
                context.strokePath()
                
                
            }
        }

    }
