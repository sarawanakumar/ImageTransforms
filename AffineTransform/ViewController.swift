//
//  ViewController.swift
//  AffineTransform
//
//  Created by Sarawanak on 7/19/17.
//  Copyright © 2017 Sarawanak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var transformed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender.currentTitle! {
        case "Scale":
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                if self.transformed {
                    self.imageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
                }
                else {
                    self.imageView.transform = CGAffineTransform.identity
                }
                self.transformed = !self.transformed
            }, completion: { (_) in
                ()
            })
            
        case "Translate":
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                if self.transformed {
                    self.imageView.transform = CGAffineTransform(translationX: -100, y: -100)
                }
                else {
                    self.imageView.transform = CGAffineTransform.identity
                }
                self.transformed = !self.transformed
            }, completion: { (_) in
                ()
            })
            
        case "Rotate":
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                if self.transformed {
                    self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                }
                else {
                    self.imageView.transform = CGAffineTransform.identity
                }
                self.transformed = !self.transformed
            }, completion: { (_) in
                ()
            })
            
        case "Identity":
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                self.imageView.transform = CGAffineTransform.identity
            }, completion: { (_) in
                ()
            })
            
        default:
            ()
        }
        
        
    }
    
}

