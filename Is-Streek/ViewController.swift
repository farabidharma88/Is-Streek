//
//  ViewController.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 26/04/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var achButton: UIButton!{
        didSet{
            achButton.layer.shadowColor = UIColor.black.cgColor
            achButton.layer.shadowOffset = CGSize(width: 5, height: 5)
            achButton.layer.shadowRadius = 5.0
            achButton.layer.shadowOpacity = 0.1
        }
    }
    @IBOutlet weak var targetButton: UIButton!{
        didSet{
            targetButton.layer.shadowColor = UIColor.black.cgColor
            targetButton.layer.shadowOffset = CGSize(width: 5, height: 5)
            targetButton.layer.shadowRadius = 5.0
            targetButton.layer.shadowOpacity = 0.1
        }
    }
    @IBOutlet weak var popUPView: UIView! {
        didSet {
            popUPView.layer.cornerRadius = 12
            popUPView.layer.masksToBounds = true
            
            let blur = UIBlurEffect(style: .extraLight)
            let blurView = UIVisualEffectView(effect: blur)
            popUPView.addSubview(blurView)

            blurView.translatesAutoresizingMaskIntoConstraints = false
            blurView.topAnchor.constraint(equalTo: popUPView.topAnchor).isActive = true
            blurView.bottomAnchor.constraint(equalTo: popUPView.bottomAnchor).isActive = true
            blurView.leadingAnchor.constraint(equalTo: popUPView.leadingAnchor).isActive = true
            blurView.trailingAnchor.constraint(equalTo: popUPView.trailingAnchor).isActive = true
            popUPView.sendSubviewToBack(blurView)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

