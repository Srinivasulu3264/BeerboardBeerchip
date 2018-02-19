//
//  ContainerViewController.swift
//  BeerboardBeerchip
//
//  Created by Vmoksha on 19/02/18.
//  Copyright © 2018 Vmoksha. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController  {

    let transition = Animations()
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var homeImageview: UIImageView!
    @IBOutlet weak var homeTitleLbl: UILabel!
    
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var locationImageview: UIImageView!
    @IBOutlet weak var locationTitleLbl: UILabel!
    
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var orderImageView: UIImageView!
    @IBOutlet weak var orderTitleLbl: UILabel!
    
    @IBOutlet weak var rewardsButton: UIButton!
    @IBOutlet weak var rewardsImageview: UIImageView!
    @IBOutlet weak var rewardsTitleLbl: UILabel!
    
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var moreImageView: UIImageView!
    @IBOutlet weak var moreTitleLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func InvertColorForImages()  {
        
        
        
        
    }


    
    @IBAction func homeButtonAction(_ sender: Any){
        
        let  homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
         homeVC.transitioningDelegate = self
        self.present(homeVC , animated: true, completion: nil)
        
        if homeButton.isSelected {
            homeImageview.image = #imageLiteral(resourceName: "HomeInvert")
            homeTitleLbl.textColor = .white
            homeButton.isSelected = false
        }
        else
        {
            homeImageview.image = #imageLiteral(resourceName: "Home")
            homeTitleLbl.textColor = .red
            homeButton.isSelected = true
            
        }
    }
    
   
    @IBAction func locationButtonAction(_ sender: Any) {
        
        let  locatorVC  = self.storyboard?.instantiateViewController(withIdentifier: "LocatorViewController") as! LocatorViewController
        locatorVC.transitioningDelegate = self
        self.present(locatorVC , animated: true, completion: nil)
        
        
        if locationButton.isSelected {
            locationImageview.image = #imageLiteral(resourceName: "location")
            locationTitleLbl.textColor = .white
            locationButton.isSelected = false
        }
        else
        {
            locationImageview.image = #imageLiteral(resourceName: "LocationInvert")
            locationTitleLbl.textColor = .red
            locationButton.isSelected = false
            
        }
        
    }
    
    
    @IBAction func orderButtonAction(_ sender: Any) {
        
        let  orderVC  = self.storyboard?.instantiateViewController(withIdentifier: "OrderViewController") as! OrderViewController
        orderVC.transitioningDelegate = self
        self.present(orderVC , animated: true, completion: nil)
    }
    
    
    @IBAction func rewardsButtonAction(_ sender: Any) {
        
        let  rewardsVC  = self.storyboard?.instantiateViewController(withIdentifier: "RewardsViewController") as! RewardsViewController
        rewardsVC.transitioningDelegate = self
        self.present(rewardsVC , animated: true, completion: nil)
    }
    
    
    @IBAction func moreButtonAction(_ sender: Any) {
        
        let  moreVC  = self.storyboard?.instantiateViewController(withIdentifier: "MoreViewController") as! MoreViewController
        moreVC.transitioningDelegate = self
        self.present(moreVC , animated: true, completion: nil)
    }
    
}

extension ContainerViewController: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.originFrame = self.view.bounds
        transition.presenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.presenting = false
        return transition
    }
}
