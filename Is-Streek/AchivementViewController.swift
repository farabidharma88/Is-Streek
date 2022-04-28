//
//  AchivementViewController.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 28/04/22.
//

import UIKit

class AchivementViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    

//    @IBOutlet weak var myCollectionViewHeight: NSLayoutConstraint!
    
//    @IBOutlet weak var achivementViewController: UICollectionViewController!
    
    @IBOutlet weak var achivementCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if let flowlayout =  achivementCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowlayout.itemSize = CGSize(width: 158, height: 210)
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "AchivementID", for: indexPath) as? AchivementCell)!
        cell.setupCircleView(indexForDraw: indexPath.row)
        return cell
    }
    
    
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
