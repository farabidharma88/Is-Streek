//
//  AddIconViewController.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 28/04/22.
//

import Foundation
import UIKit

class AddIconViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "SymbolCellID", for: indexPath) as? SymbolsCell)!
        cell.setupView(indexForDraw: indexPath.row)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "icon", sender: indexPath)
        
    }
}
