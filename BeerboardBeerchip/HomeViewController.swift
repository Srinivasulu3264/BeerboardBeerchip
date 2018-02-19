//
//  HomeViewController.swift
//  BeerboardBeerChipApp
//
//  Created by Vmoksha on 15/02/18.
//  Copyright © 2018 Vmoksha. All rights reserved.
//

import UIKit

public class HomeViewController: UIViewController  {

    @IBOutlet weak var menuBarCollectionViewContainerview: UIView!
    @IBOutlet weak var rewardsLbl: UILabel!
    @IBOutlet weak var rewardsBtn: UIButton!
    @IBOutlet weak var entercodeBtn: UIButton!
    @IBOutlet weak var viewRedeemButton: UIButton!
    var menuTitleArr = [String]()
    var menuImagesArr = [String]()
    
    
    override public func viewDidLoad() {
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
         viewRedeemButton.layer.cornerRadius = 8.0

    // Do any additional setup after loading the view.
    }

    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
}



