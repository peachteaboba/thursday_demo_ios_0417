//
//  ViewController.swift
//  thursday_demo_ios_0417
//
//  Created by Andy Feng on 4/6/17.
//  Copyright © 2017 Andy Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myName:String?
    @IBOutlet weak var menuViewLeftConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuButtonView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        
        
        // Assign an event handler to menuButtonView
        let menuButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleMenuButtonPressed))
        menuButtonView.isUserInteractionEnabled = true
        menuButtonView.addGestureRecognizer(menuButtonTap)
        
        
        // When the view loads 
        menuViewLeftConstraint.constant = -300
        
        
        
    }
    
    func handleMenuButtonPressed(){
        
        /// This is not finished. Do this before you continue!!!
        print(myName ?? "found nil")
        
        if menuViewLeftConstraint.constant == -300 {
            menuViewLeftConstraint.constant = -50
        } else {
            menuViewLeftConstraint.constant = -300
        }
        

        // Create the animation
        self.view.setNeedsLayout()
        
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 0.25, initialSpringVelocity: 0.7,options: [UIViewAnimationOptions.allowUserInteraction], animations: {
            
            // Code inside animation function
            self.view.layoutIfNeeded()
            
        }) { (finished) in
            if finished {
                // Code to execute after animation
                print("animation done")
            }
            
            
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 
    }


}

