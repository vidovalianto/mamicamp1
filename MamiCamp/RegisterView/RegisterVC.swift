//
//  RegisterVC.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/19/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var firstNameET: UITextField!
    @IBOutlet weak var lastNameET: UITextField!
    @IBOutlet weak var emailET: UITextField!
    @IBOutlet weak var doneBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneBtnClicked(_ sender: Any) {
        if(isValidate()){
            var postParams: [String:Any] = [
                "user_id" : 1801,
                "email" : true,
                "first_name" : firstNameET.text,
                "last_name" : lastNameET.text
            ]
            var jsonString : String
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: postParams, options: .prettyPrinted)
                let jsonString = String(data: jsonData, encoding: String.Encoding.ascii)
            } catch {
                print("error")
            }
            
            NetworkFacade.postApi(url: "http://wonderdance-user.duckdns.org:8082/user", parameters: jsonString) { (json) in
                print(json)
            }
        }
        
    }
    
    private func isValidate () -> Bool{
        var isValid = false
        if (firstNameET.text?.isEmpty == true){
            print("nama depan diisi")
        }else if (firstNameET.text!.count < 3){
            print("nama depan minimal 3 huruf")
        }else {
            isValid = true
        }
        if (lastNameET.text?.isEmpty == true){
            print("nama belakang diisi")
        }else if (lastNameET.text!.count < 3){
            print("nama belakang minimal 3 huruf")
        }
        if (emailET.text?.isEmpty == true){
            print("nama email diisi")
        }else if (emailET.text!.count < 3){
            print("email minimal 3 huruf")
        }else {
            isValid = true
        }
        return isValid
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
