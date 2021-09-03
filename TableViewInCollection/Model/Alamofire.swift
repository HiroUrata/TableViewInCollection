//
//  Alamofire.swift
//  TableViewInCollection
//
//  Created by UrataHiroki on 2021/09/03.
//

import Foundation
import Alamofire
import SwiftyJSON


class Alamofire{
    
    func searchGetImageURL(){
        
        var selectArrayCount = 0
        
        ImageURLModel.SearchKeysectionTitleArray.forEach({
            
            //commit時apikeyにモザイク
            AF.request("https://pixabay.com/api/?key=22343236-f9a23846f5c6250f4483d03d6&q=\($0)",method: .get,parameters: nil,encoding: JSONEncoding.default).responseJSON { (response) in
                
                switch response.result{
                
                case.success:
                    ImageURLModel.imageURLArrays = [[]] //一度、空にする
                    
                    for getUrlCount in 0...4{
                        
                        if JSON(response.data as Any)["hits"][getUrlCount]["webformatURL"].string != nil{
                            
                            ImageURLModel.imageURLArrays[selectArrayCount].append(URL(string: JSON(response.data as Any)["hits"][getUrlCount]["webformatURL"].string!)!)
                            
                        }else{  //取得できる"webformatURL"が無くなった時に処理を終わらせる
                            
                            break
                            
                        }
                        
                    }
                    selectArrayCount += 1
                
                case .failure:
                    let error = NSError()
                    print(error.debugDescription)
                    break
                }
            }
        })
    }
    
    
}




