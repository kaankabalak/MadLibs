//
//  OtherViewController.swift
//  MadLibs
//
//  Created by Kaan Kabalak on 7/11/17.
//  Copyright © 2017 Kaan Kabalak. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {
    
    var delegate: OtherViewControllerDelegate?
    
    @IBOutlet weak var adjectiveLabel: UITextField!
    @IBOutlet weak var verb1Label: UITextField!
    @IBOutlet weak var verb2Label: UITextField!
    @IBOutlet weak var nounLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonPressed(_ sender: UIButton) {
        delegate?.passData(by: self, with: "We are having a perfectly \(adjectiveLabel.text!) time. Later, we will \(verb1Label.text!) and \(verb2Label.text!) in the \(nounLabel.text!).")
        print("submit")
        
    }
    

}
