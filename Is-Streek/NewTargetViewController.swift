//
//  NewTargetViewController.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 28/04/22.
//

import Foundation
import UIKit

class NewTargetViewController: UIViewController {
    @IBOutlet weak var addImageButton: UIImageView!{
        didSet{
            addImageButton.image = UIImage(systemName: "plus")
            addImageButton.tintColor = .systemOrange
        }
    }
    @IBOutlet weak var addButton: UIButton!{
        didSet {
            addButton.layer.cornerRadius = 4
            addButton.layer.masksToBounds = true
            addButton.layer.shadowColor = UIColor.black.cgColor
            addButton.layer.shadowOffset = CGSize(width: 5, height: 5)
            addButton.layer.shadowRadius = 5.0
            addButton.layer.shadowOpacity = 0.1
        }
    }
    @IBOutlet weak var popUpButton: UIButton!{
        didSet {
            popUpButton.layer.cornerRadius = 4
            popUpButton.layer.masksToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setPopupButton()
        let tapGestureRecognizer =  UITapGestureRecognizer(target: self, action: #selector(didTapView(_:)))
        
        addImageButton.addGestureRecognizer(tapGestureRecognizer)
    }
    
    
    func setPopupButton(){
        let optionClosure = {(action : UIAction) in print(action.title)}
        
        popUpButton.menu = UIMenu(children: [UIAction(title: "Every Day", state: .on, handler: optionClosure),UIAction(title: "Once Every Two Day",  handler: optionClosure),UIAction(title: "Once Every Three Day", handler: optionClosure)])
        
        popUpButton.showsMenuAsPrimaryAction = true
        popUpButton.changesSelectionAsPrimaryAction = true
    }
    @IBAction func didTapView(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "addButtonID" , sender: nil)
    }
    
}
