//
//  popPastillaViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 11-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class popPastillaViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!

    
    var timer1: Timer!
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
      
        self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)

        titulo.opacity      = 0.0
        titulo.animation    = "zoomIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.7
        titulo.animate()
        

        
        delay(delay: 1.0){
            self.btnExit.isHidden = false
        
        }
        
    }
    func animation1() {
        
        titulo.animation    = "pop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 1.5
        titulo.animate()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
