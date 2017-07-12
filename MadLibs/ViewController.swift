//
//  ViewController.swift
//  MadLibs
//
//  Created by Kaan Kabalak on 7/11/17.
//  Copyright © 2017 Kaan Kabalak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, OtherViewControllerDelegate {

    @IBOutlet weak var madLibsResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func composeButtonClicked(_ sender: Any) {
        print("Clicked")
        performSegue(withIdentifier: "ComposeSegue", sender: nil)
    }
    
    @IBAction func unwind(segue:UIStoryboardSegue) { }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nav = segue.destination as! OtherViewController
        nav.delegate = self
    }
    
    func passData(by controller: OtherViewController, with text: String) {
        madLibsResult.text = text
    }
}

