//
//  ViewController.swift
//  Animation3
//
//  Created by miyazawaryohei on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        let image = UIImageView(image: UIImage(named: "image"))
        image.alpha = 0
        image.center = sender.location(in: self.view)
        view.addSubview(image)
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [.curveEaseInOut], animations: {
            image.alpha = 10
        }, completion: {(finished:Bool) in
                self.fadeoutAndRemove(image)
            })
    }
    
    func fadeoutAndRemove(_ view:UIView) {
        UIView.animate(withDuration: 2.0, delay: 3.0, options: UIView.AnimationOptions(), animations: {
            view.alpha = 0.0
        }, completion: {(finished:Bool) in
            view.removeFromSuperview()
        })
    }
        
}

