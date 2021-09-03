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
    
    static func searchGetImageURL(){
    
            //commit時apikeyにモザイク
        AF.request("https://pixabay.com/api/?key=APIKey&q=\(ImageURLModel.SearchKeysectionTitle)",method: .get,parameters: nil,encoding: JSONEncoding.default).responseJSON { (response) in

                switch response.result{
                
                case.success:
                    ImageURLModel.imageURLArrays = [] //一度、空にする
                    
                    for getUrlCount in 0...4{
                        
                        if JSON(response.data as Any)["hits"][getUrlCount]["webformatURL"].string != nil{
                            
                            ImageURLModel.imageURLArrays.append(URL(string: JSON(response.data as Any)["hits"][getUrlCount]["webformatURL"].string!)!)
                            
                        }else{  //取得できる"webformatURL"が無くなった時に処理を終わらせる
                            
                            break
                            
                        }
                        
                    }
                
                case .failure:
                    let error = NSError()
                    print(error.debugDescription)
                    break
                }
            }
    }
    
    
}




