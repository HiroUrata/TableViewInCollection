//
//  TableViewCell.swift
//  TableViewInCollection
//
//  Created by UrataHiroki on 2021/09/02.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifire = "TableViewCell"
    static let nib = {() -> UINib in return UINib(nibName: "TableViewCell", bundle: nil)}
    static let collectionViewFlowLayout = UICollectionViewFlowLayout()
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifire)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    
    
}


extension TableViewCell:UICollectionViewDelegate{
    
    
}


extension TableViewCell:UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return CollectionViewCell.colorArray.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifire, for: indexPath) as! CollectionViewCell
        
        cell.imageView.tintColor = CollectionViewCell.colorArray[indexPath.row]
        
        return cell
        
    }
 
    
}


extension TableViewCell:UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.size.height, height: collectionView.frame.size.height)
        
    }
}
