//
//  ViewController.swift
//  actionbutton
//
//  Created by UVA  on 2016/01/16.
//  Copyright © 2016 Craftsmanmor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var actionbutton: UIButton!
    
    @IBOutlet weak var actiontwo: UIButton!
    @IBOutlet weak var actionone: UIButton!
    @IBOutlet weak var cover: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hide the buttons
        actionone.hidden = true
        actiontwo.hidden = true
        cover.hidden = true
        
    }
    
    // MARK: - Action Button
    func configureButton(){
    
        actionbutton.layer.cornerRadius = 0.5 * actionbutton.bounds.size.width
        actionbutton.layer.borderColor = UIColor.darkGrayColor().CGColor as CGColorRef
        actionbutton.clipsToBounds = true
        
        actionone.layer.cornerRadius = 0.5 * actionbutton.bounds.size.width
        actionone.layer.borderColor = UIColor.darkGrayColor().CGColor as CGColorRef
        actionone.clipsToBounds = true
        
        actiontwo.layer.cornerRadius = 0.5 * actionbutton.bounds.size.width
        actiontwo.layer.borderColor = UIColor.darkGrayColor().CGColor as CGColorRef
        actiontwo.clipsToBounds = true
        
        cover.layer.cornerRadius = 0.5 * cover.bounds.size.width
        cover.layer.borderColor = UIColor.darkGrayColor().CGColor as CGColorRef
        cover.clipsToBounds = true
    }
    
    override func viewDidLayoutSubviews() {
        
        configureButton()
    }
    @IBAction func hidebuttons(sender: AnyObject) {
        
        // hide the buttons
        actionone.hidden = true
        actiontwo.hidden = true
        cover.hidden = true
    }
    @IBAction func actionbutton(sender: AnyObject) {
        
        // show the buttons
        actionone.hidden = false
        actiontwo.hidden = false
        cover.hidden = false
        
    }
    @IBAction func cover(sender: AnyObject) {
        
        // hide the buttons
        actionone.hidden = true
        actiontwo.hidden = true
        cover.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

