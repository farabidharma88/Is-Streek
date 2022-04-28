//
//  TargetViewController.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 27/04/22.
//

import UIKit

class TargetViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    

    @IBOutlet weak var progressBarCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "progressCellID", for: indexPath) as? ProgressBarCell)!
        cell.setupView(indexForDraw: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
        if indexPath.row < 3 { performSegue(withIdentifier: "prog", sender: indexPath)}
        else{
            performSegue(withIdentifier: "add", sender: indexPath)
        }
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
