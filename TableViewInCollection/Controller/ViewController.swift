//
//  ViewController.swift
//  TableViewInCollection
//
//  Created by UrataHiroki on 2021/09/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.searchGetImageURL()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [self] in
            
            tableView.delegate = self
            tableView.dataSource = self
            
            tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifire)
            tableView.reloadData()
        }
    }


}

extension ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return ImageURLModel.SearchKeysectionTitle
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 5
    }
    
}

extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.frame.size.height / 4
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifire, for: indexPath) as! TableViewCell
        
        return cell
    }
    
    
}
