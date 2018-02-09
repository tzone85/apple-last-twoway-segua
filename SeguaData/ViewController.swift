//
//  ViewController.swift
//  SeguaData
//
//  Created by Thando Mini on 2018/02/08.
//  Copyright © 2018 Thando Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    // The required delegate method (from the protocol)
    func dataReceived(data: String) {
        label.text = data
    }
    
 
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func changeToBlue(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForward", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward"{
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            secondVC.delegate = self
        }
    }
}

