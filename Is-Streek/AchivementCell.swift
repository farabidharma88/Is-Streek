//
//  AchivementCell.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 28/04/22.
//

import UIKit

class AchivementCell: UICollectionViewCell {
    let shape2 = CAShapeLayer()
    let trackShape2 = CAShapeLayer()
    @IBOutlet weak var achivementImage: UIImageView!{
        didSet {
            achivementImage.image = UIImage(systemName: "square.and.arrow.up")
            achivementImage.tintColor = .systemOrange
            achivementImage.center = self.contentView.center
        }
    }
    @IBOutlet weak var progCircleID: UIView!
    func setupCircleView(indexForDraw: Int) {
        let circlePath = UIBezierPath(arcCenter: progCircleID.center, radius: 50, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
        
        
        
        trackShape2.path = circlePath.cgPath
        trackShape2.lineWidth = 10
        trackShape2.strokeColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00).cgColor
        trackShape2.fillColor = UIColor.clear.cgColor
        progCircleID.layer.addSublayer(trackShape2)
        
        
        shape2.path = circlePath.cgPath
        shape2.lineWidth = 10
        shape2.strokeColor = UIColor(red: 0.95, green: 0.60, blue: 0.22, alpha: 1.00).cgColor
        shape2.fillColor = UIColor.clear.cgColor
        shape2.strokeEnd = 0
        shape2.lineCap = .round
        progCircleID.layer.addSublayer(shape2)
        
        
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 1
        animation.duration = 3
        animation.isRemovedOnCompletion = false
        animation.fillMode = .forwards
        shape2.add(animation, forKey: "animation")
        
        //        progressLabel.text = arrayObjectLo[indexForDraw]
        
    }
}
