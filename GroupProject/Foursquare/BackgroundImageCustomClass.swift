//
//  BackgroundImageCustomClass.swift
//  Foursquare
//
//  Created by Vinayaka V on 29/06/21.
//

import UIKit

class BackgroundImageCustomClass: UIViewController {
    
    var imageView: UIImageView!
    var screenHeight:CGFloat = 0.0
    var heightNotSet = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
    }
    
    func assignbackground(){
        let background =  UIImage.backgroundImage()


          imageView = UIImageView(frame: view.bounds)
          imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
          view.addSubview(imageView)
          self.view.sendSubviewToBack(imageView)
    }
    
    
     func viewDidLayoutSubviews(contentView: UIView
                                        , scrollView: UIScrollView) {
        imageView.frame = view.bounds
        
        if UIDevice.current.orientation.isLandscape && heightNotSet {
                   screenHeight = scrollView.frame.size.width
                   heightNotSet = false
                  
               } else if UIDevice.current.orientation.isPortrait && heightNotSet {
                   
                   screenHeight = contentView.frame.size.height
                print( screenHeight)
                   heightNotSet = false
        }
   
           
        let heightConstraint = NSLayoutConstraint(item: contentView ?? "nil"  , attribute: NSLayoutConstraint.Attribute
               .height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: screenHeight)
            
               contentView.addConstraint(heightConstraint)
           
        }
}
