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
}
