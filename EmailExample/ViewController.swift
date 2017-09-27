//
//  ViewController.swift
//  EmailExample
//
//  Created by Joshua Nowak on 9/26/17.
//  Copyright © 2017 Nowak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CellSelectedDelegate {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var senderLabel: UILabel!
    @IBOutlet weak var contentsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func read(email: Email) {
        //read this email
        titleLabel.text = email.subject
        senderLabel.text = email.sender
        contentsLabel.text = email.contents
    }
    
}

