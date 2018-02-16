//
//  SplashViewController.swift
//  BeerboardBeerChipApp
//
//  Created by Vmoksha on 15/02/18.
//  Copyright © 2018 Vmoksha. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
           self.toHomeView()
       })
        
     //   perform(#selector(toHomeView), with: nil, afterDelay: 2.0)

        // Do any additional setup after loading the view.
    }
    
    @objc func toHomeView () {
         performSegue(withIdentifier: "toHomeSegue", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
       
    }
        
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
