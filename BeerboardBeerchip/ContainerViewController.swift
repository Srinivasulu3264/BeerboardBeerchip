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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    @IBAction func homeButtonAction(_ sender: Any){
        
        let  homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
         homeVC.transitioningDelegate = self
        self.present(homeVC , animated: true, completion: nil)
    }
    
   
    @IBAction func locationButtonAction(_ sender: Any) {
        
        let  locatorVC  = self.storyboard?.instantiateViewController(withIdentifier: "LocatorViewController") as! LocatorViewController
        locatorVC.transitioningDelegate = self
        self.present(locatorVC , animated: true, completion: nil)
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
