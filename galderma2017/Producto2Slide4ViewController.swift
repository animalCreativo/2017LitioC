//
//  Producto2Slide4ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 11-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide4ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!

    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    
    @IBOutlet var btnPopA: UIButton!
    @IBOutlet var btnPopB: UIButton!
    @IBOutlet var btnPopC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        self.btn1.isHidden = true
        self.btn2.isHidden = true
        self.btn3.isHidden = true
        self.btn4.isHidden = true
        
        self.btnPopA.isHidden = true
        self.btnPopB.isHidden = true
        self.btnPopC.isHidden = true
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.2
        titulo.duration     = 0.5
        titulo.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "fadeIn"
        texto2.curve        = "easeIn"
        texto2.delay        = 0.8
        texto2.duration     = 0.5
        texto2.animate()
        
        texto1.opacity      = 0.0
        texto1.animation    = "slideLeft"
        texto1.curve        = "easeIn"
        texto1.delay        = 1.3
        texto1.duration     = 0.9
        texto1.animate()
        
        delay(delay:2.2){
            // botones
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            self.btnPopA.isHidden = false
            self.btnPopB.isHidden = false
            self.btnPopC.isHidden = false
        }
        
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
