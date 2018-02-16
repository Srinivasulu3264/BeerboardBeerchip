//
//  HomeViewController.swift
//  BeerboardBeerChipApp
//
//  Created by Vmoksha on 15/02/18.
//  Copyright © 2018 Vmoksha. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate ,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var menuBarCollectionView: UICollectionView!
    
    @IBOutlet weak var menuBarCollectionViewContainerview: UIView!
    
    @IBOutlet weak var rewardsLbl: UILabel!
    
    @IBOutlet weak var rewardsBtn: UIButton!
    @IBOutlet weak var entercodeBtn: UIButton!
    
    var menuTitleArr = [String]()
    var menuImagesArr = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuTitleArr = ["HOME","LOCATOR","ORDER","REWARDS","MORE"]
        menuImagesArr = ["Home.png","location-icon.png", "Home.png","location-icon.png", "Home.png"]
        
        rewardsLbl.layer.borderWidth = 1.0
        rewardsLbl.layer.borderColor = UIColor.red.cgColor
        
       
         entercodeBtn.layer.borderColor = UIColor.darkGray.cgColor
         entercodeBtn.layer.borderWidth = 1.0
         rewardsBtn.layer.borderWidth = 1.0
         rewardsBtn.layer.borderColor = UIColor.darkGray.cgColor
        
         rewardsBtn.layer.cornerRadius = 8.0
         entercodeBtn.layer.cornerRadius = 8.0
        
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return menuTitleArr.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuBarCell", for: indexPath) as! MenuBarCollectionViewCell
        
       collectionCell.menuBarTitle.text = menuTitleArr[indexPath.row]
       collectionCell.menuImageView.image = UIImage(named: menuImagesArr[indexPath.row])

        return collectionCell
    }
    
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        return CGSize(width: (self.menuBarCollectionViewContainerview.frame.size.width-2.0)/5.0  , height: (self.menuBarCollectionViewContainerview.frame.size.height)  )
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        /*
        if indexPath.row == 1 {
            performSegue(withIdentifier: "toLocatorSegue", sender: self)
        }
 */
    }
    
}



