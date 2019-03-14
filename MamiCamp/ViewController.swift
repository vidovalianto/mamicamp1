//
//  ViewController.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/5/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testBtn: UIButton!
    
    @IBOutlet weak var testLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func testBtnClicked(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "CityViewController") as? CityViewController{
            self.show(controller, sender: self)
        }else {
            print("error")
        }
    }
    

}

