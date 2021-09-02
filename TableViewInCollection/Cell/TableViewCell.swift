//
//  TableViewCell.swift
//  TableViewInCollection
//
//  Created by UrataHiroki on 2021/09/02.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let identifire = "TableViewCell"
    
    static let nib = {() -> UINib in return UINib(nibName: "TableViewCell", bundle: nil)}
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    
    
}
