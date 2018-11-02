//
//  ViewController.swift
//  overloadfrida
//
//  Created by Sharat M R on 12/09/18.
//  Copyright © 2018 Appknox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iterationInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func overloadNSLog(sender: UIButton) {
        let num:Int = Int(iterationInput.text!) ?? 0
        let alertController = UIAlertController(title: "Hello", message: "Hello \(num + 1)",
                                                preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        var i = 0
        while i < num {
            i += 1
            NSLog("This should be working \(num)" )
        }
    }
}
