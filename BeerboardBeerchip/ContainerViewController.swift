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
        
        let  homeVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! HomeViewController
         homeVC.transitioningDelegate = self
        self.present(homeVC , animated: true, completion: nil)
    }
    
   
    @IBAction func locationButtonAction(_ sender: Any) {
        
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
