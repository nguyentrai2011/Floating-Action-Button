//
//  ViewController.swift
//  actionflotingbutton
//
//  Created by Yogesh Patel on 09/09/18.
//  Copyright © 2018 Yogesh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var actionButton : ActionButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }

    func setupButtons(){
        let google = ActionButtonItem(title: "Google", image: #imageLiteral(resourceName: "a1"))
        google.action = { item in self.view.backgroundColor = UIColor.red }
        google.action = { action in
            print("Press Google!")
            self.actionButton.toggleMenu()
        }
        
        let twitter = ActionButtonItem(title: "Twitter", image: #imageLiteral(resourceName: "a2"))
        twitter.action = { item in self.view.backgroundColor = UIColor.blue }
        twitter.action = { action in
            print("Press Twitter!")
            self.actionButton.toggleMenu()
        }
        
        let facebook = ActionButtonItem(title: "Facebook", image: #imageLiteral(resourceName: "a3"))
        facebook.action = { action in
            print("Press Facebook!")
            self.actionButton.toggleMenu()
        }
        
        let linkedin = ActionButtonItem(title: "Linkedin", image: #imageLiteral(resourceName: "a4"))
        linkedin.action = { action in
            print("Press Linkedin!")
            self.actionButton.toggleMenu()
        }
        
        actionButton = ActionButton(attachedToView: self.view, items: [google, twitter, facebook, linkedin])
        actionButton.setTitle("+", forState: UIControl.State())
        actionButton.backgroundColor = UIColor(red: 238.0/255.0, green: 130.0/255.0, blue: 130.0/255.0, alpha: 1)
        actionButton.action = { button in button.toggleMenu()}
    }
}

