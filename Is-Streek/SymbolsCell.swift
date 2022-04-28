//
//  SymbolsCell.swift
//  Is-Streek
//
//  Created by Farabi Dharma on 28/04/22.
//

import UIKit

class SymbolsCell: UICollectionViewCell {
    
    @IBOutlet weak var imageSymbol: UIImageView!
    @IBOutlet weak var SymbolsView: UIImageView!
    func setupView(indexForDraw: Int) {
        if indexForDraw == 0 {
            imageSymbol.image = UIImage(systemName: "lungs")
            imageSymbol.tintColor = .systemOrange
        }
        if indexForDraw == 1 {
            imageSymbol.image = UIImage(systemName: "plus")
            imageSymbol.tintColor = .systemOrange
        }
        if indexForDraw == 2 {
            imageSymbol.image = UIImage(systemName: "bubble.left")
            imageSymbol.tintColor = .systemOrange
        }
        if indexForDraw == 3 {
            imageSymbol.image = UIImage(systemName: "character.cursor.ibeam")
            imageSymbol.tintColor = .systemOrange
        }
        if indexForDraw == 4 {
            imageSymbol.image = UIImage(systemName: "bandage")
            imageSymbol.tintColor = .systemOrange
        }
        if indexForDraw == 5 {
            imageSymbol.image = UIImage(systemName: "brain.head.profile")
            imageSymbol.tintColor = .systemOrange
        }
        if indexForDraw == 6 {
            imageSymbol.image = UIImage(systemName: "chevron.left.forwardslash.chevron.right")
            imageSymbol.tintColor = .systemOrange
        }
        if indexForDraw == 7 {
            imageSymbol.image = UIImage(systemName: "paintbrush")
            imageSymbol.tintColor = .systemOrange
        }
    }
}
