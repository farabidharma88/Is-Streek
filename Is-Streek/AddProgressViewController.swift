//
//  AddProgressViewController.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 28/04/22.
//

import Foundation
import UIKit
class AddProgressViewController: UIViewController {
    
    @IBOutlet weak var imageLung: UIImageView!{
        didSet{
            imageLung.image = UIImage(systemName: "lungs")
            imageLung.tintColor = .systemOrange
        }
    }
    @IBOutlet weak var yesButton: UIButton!{
        didSet{
            yesButton.layer.shadowColor = UIColor.black.cgColor
            yesButton.layer.shadowOffset = CGSize(width: 5, height: 5)
            yesButton.layer.shadowRadius = 5.0
            yesButton.layer.shadowOpacity = 0.1
        }
    }
    @IBOutlet weak var noButton: UIButton!{
        didSet{
            noButton.layer.shadowColor = UIColor.black.cgColor
            noButton.layer.shadowOffset = CGSize(width: 5, height: 5)
            noButton.layer.shadowRadius = 5.0
            noButton.layer.shadowOpacity = 0.1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
