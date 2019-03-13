//
//  CampusViewController.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/12/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import UIKit

class CampusViewController: UIViewController {
    
    var titlePage = ""
    let campusImages = ["amikom","atma","ugm","upn"]
    let campusNames = ["AMIKOM","ATMA","UGM","UPN"]
    let campusAddress = ["Alamat AMIKOM","Alamat ATMA","Alamat UGM","Alamat UPN"]

    @IBOutlet weak var campusCV: UICollectionView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        campusCV.register(UINib.init(nibName: "CampusCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CampusCVCcell")
        // Do any additional setup after loading the view.
        
        campusCV.dataSource = self
        campusCV.delegate = self
        
        titleLbl.text = titlePage
    }
    
}

extension CampusViewController : UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.campusNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampusCVCcell", for: indexPath) as! CampusCVC
        cell.campusNameLbl.text = campusNames[indexPath.row]
        cell.campusAddressLbl.text = campusAddress[indexPath.row]
        cell.campusImageView.image = UIImage.init(named: campusImages[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: (collectionView.bounds.width/2-20), height: 100)
    }
    
    
    
    
    
    
}
