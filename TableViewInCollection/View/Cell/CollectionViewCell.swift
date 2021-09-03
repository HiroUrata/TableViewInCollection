//
//  CollectionViewCell.swift
//  TableViewInCollection
//
//  Created by UrataHiroki on 2021/09/02.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    
    static let identifire = "CollectionViewCell"
    static let nib = {() -> UINib in return UINib(nibName: "CollectionViewCell", bundle: nil)}
//    static let colorArray = [UIColor.systemGreen,UIColor.systemTeal,UIColor.systemIndigo,UIColor.systemRed,UIColor.systemGray]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    

}
