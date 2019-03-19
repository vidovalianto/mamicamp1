//
//  AnyViewExtender.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/19/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage
import Alamofire

extension UIImageView{
    func loadImageURL(url: String){
//        Alamofire.request(url).responseImage { response in
//            self.image =  response.result.value
//        }
        self.af_setImage(withURL: URL(string:url)!, placeholderImage: UIImage(named: "amikom"))
    }
}
