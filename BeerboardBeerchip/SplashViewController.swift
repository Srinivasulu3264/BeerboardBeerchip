//
//  SplashViewController.swift
//  BeerboardBeerChipApp
//
//  Created by Vmoksha on 15/02/18.
//  Copyright © 2018 Vmoksha. All rights reserved.
//

import UIKit

 public class SplashViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
           self.toHomeView()
       })
        
     //   perform(#selector(toHomeView), with: nil, afterDelay: 2.0)
    }
    
    @objc func toHomeView () {
         performSegue(withIdentifier: "toHomeSegue", sender: self)
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
}
