//
//  DetailViewController.swift
//  Dupe'd
//
//  Created by Kaitlyn on 2/23/15.
//  Copyright (c) 2015 K8La. All rights reserved.
//

import UIKit



class DetailViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
    @IBAction func share(sender: AnyObject) {
        

        func screenshot() -> UIImage {
            
            UIGraphicsBeginImageContext(view.frame.size)
            view.layer.renderInContext(UIGraphicsGetCurrentContext())
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
    
            
            return image
            
        }
        
        
        let myMessage = "tiny dancer"
        
        let image = screenshot()
        
        
        
        let activityViewController : UIActivityViewController = UIActivityViewController(
            activityItems: [myMessage, image],
            applicationActivities: nil)
        let presentationController = activityViewController.popoverPresentationController
        presentationController?.sourceView = sender as! UIView // Needed to support the iPads
        presentationController?.sourceRect = CGRect(
            origin: CGPointZero,
            size: CGSize(width: sender.frame.width, height: sender.frame.height))
        
        self.presentViewController(activityViewController, animated: true, completion: nil)
        
        

    }
    
    
    

}
