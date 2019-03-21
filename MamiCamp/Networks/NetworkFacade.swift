//
//  NetworkFacade.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/14/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Alamofire_SwiftyJSON
import Alamofire
import SwiftyJSON
import AlamofireImage

class NetworkFacade{
    
    static func getApi(url : String, parameters: [String: String] = [:], callback: @escaping (JSON)-> ()) {
        Alamofire.request(url, method: .get, parameters: parameters, encoding:  URLEncoding.default)
            .responseSwiftyJSON { dataResponse in
                guard let value = dataResponse.result.value else {
                    return
                }
                callback(value)

        }
    }
    
    static func postApi(url : String, parameters: [String: Any] = [:], callback: @escaping (JSON)-> ()) {
        let header : HTTPHeaders = ["Content-Type": "application/json"]
        Alamofire.request(url, method: .post, parameters: parameters, encoding:  JSONEncoding.default, headers : header)
            .responseSwiftyJSON { dataResponse in
                guard let value = dataResponse.result.value else {
                    return
                }
                callback(value)
        }
    }
    
    func generateHeader() -> HTTPHeaders{
        return ["Content-Type": "application/json"]
    }
    
    
}
