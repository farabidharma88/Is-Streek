//
//  ProgressBarCell.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 27/04/22.
//

import UIKit

class ProgressBarCell: UICollectionViewCell {
    let shape = CAShapeLayer()
    let trackShape = CAShapeLayer()
    
    @IBOutlet weak var imageCell: UIImageView!
//    {
//        didSet {
//            imageCell.image = UIImage(systemName: "lungs")
//            imageCell.tintColor = .systemOrange
//        }
//    }
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressCircleID: UIView!
    @IBOutlet weak var precentageLabel: UILabel!
    
    func setupView(indexForDraw: Int) {
        if indexForDraw == 0 {
            let circlePath = UIBezierPath(arcCenter: progressCircleID.center, radius: 50, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
            
            imageCell.image = UIImage(systemName: "lungs")
            imageCell.tintColor = .systemOrange
            
            trackShape.path = circlePath.cgPath
            trackShape.lineWidth = 10
            trackShape.strokeColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00).cgColor
            trackShape.fillColor = UIColor.clear.cgColor
            progressCircleID.layer.addSublayer(trackShape)
            
            
            shape.path = circlePath.cgPath
            shape.lineWidth = 10
            shape.strokeColor = UIColor(red: 0.95, green: 0.60, blue: 0.22, alpha: 1.00).cgColor
            shape.fillColor = UIColor.clear.cgColor
            shape.strokeEnd = 0
            shape.lineCap = .round
            progressCircleID.layer.addSublayer(shape)
            
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 0.6
            animation.duration = 3
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            shape.add(animation, forKey: "animation")
            
            //        progressLabel.text = arrayObjectLo[indexForDraw]
            progressLabel.text = "Quit Smoking"
            precentageLabel.text = "75%"
        }
        if indexForDraw == 1 {
            let circlePath = UIBezierPath(arcCenter: progressCircleID.center, radius: 50, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
            
            imageCell.image = UIImage(systemName: "chevron.left.forwardslash.chevron.right")
            imageCell.tintColor = .systemOrange
            
            trackShape.path = circlePath.cgPath
            trackShape.lineWidth = 10
            trackShape.strokeColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00).cgColor
            trackShape.fillColor = UIColor.clear.cgColor
            progressCircleID.layer.addSublayer(trackShape)
            
            
            shape.path = circlePath.cgPath
            shape.lineWidth = 10
            shape.strokeColor = UIColor(red: 0.95, green: 0.60, blue: 0.22, alpha: 1.00).cgColor
            shape.fillColor = UIColor.clear.cgColor
            shape.strokeEnd = 0
            shape.lineCap = .round
            progressCircleID.layer.addSublayer(shape)
            
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 0.4
            animation.duration = 3
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            shape.add(animation, forKey: "animation")
            
            //        progressLabel.text = arrayObjectLo[indexForDraw]
            progressLabel.text = "Expert at Swift"
            precentageLabel.text = "50%"
        }
        if indexForDraw == 2 {
            let circlePath = UIBezierPath(arcCenter: progressCircleID.center, radius: 50, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
            
            imageCell.image = UIImage(systemName: "paintbrush")
            imageCell.tintColor = .systemOrange
            
            trackShape.path = circlePath.cgPath
            trackShape.lineWidth = 10
            trackShape.strokeColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00).cgColor
            trackShape.fillColor = UIColor.clear.cgColor
            progressCircleID.layer.addSublayer(trackShape)
            
            
            shape.path = circlePath.cgPath
            shape.lineWidth = 10
            shape.strokeColor = UIColor(red: 0.95, green: 0.60, blue: 0.22, alpha: 1.00).cgColor
            shape.fillColor = UIColor.clear.cgColor
            shape.strokeEnd = 0
            shape.lineCap = .round
            progressCircleID.layer.addSublayer(shape)
            
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 0.2
            animation.duration = 3
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            shape.add(animation, forKey: "animation")
            
            //        progressLabel.text = arrayObjectLo[indexForDraw]
            progressLabel.text = "Expert at UI/UX"
            precentageLabel.text = "25%"
        }
        if indexForDraw == 3 {
            let circlePath = UIBezierPath(arcCenter: progressCircleID.center, radius: 50, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
            
            imageCell.image = UIImage(systemName: "plus")
            imageCell.tintColor = .systemOrange
            
            trackShape.path = circlePath.cgPath
            trackShape.lineWidth = 10
            trackShape.strokeColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00).cgColor
            trackShape.fillColor = UIColor.clear.cgColor
            progressCircleID.layer.addSublayer(trackShape)
            
            
            shape.path = circlePath.cgPath
            shape.lineWidth = 10
            shape.strokeColor = UIColor(red: 0.95, green: 0.60, blue: 0.22, alpha: 1.00).cgColor
            shape.fillColor = UIColor.clear.cgColor
            shape.strokeEnd = 0
            shape.lineCap = .round
            progressCircleID.layer.addSublayer(shape)
            
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 0
            animation.duration = 3
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            shape.add(animation, forKey: "animation")
            
            //        progressLabel.text = arrayObjectLo[indexForDraw]
            progressLabel.text = "Add New"
            precentageLabel.isHidden = true
        }
    }
    
}
