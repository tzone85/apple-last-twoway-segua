//
//  SecondViewController.swift
//  SeguaData
//
//  Created by Thando Mini on 2018/02/08.
//  Copyright © 2018 Thando Mini. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    var delegate : CanReceive?
    
    var data = ""
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label2.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SendBackButtonPressed(_ sender: Any) {
        delegate?.dataReceived(data: textField2.text!)
        
        //to move back to the original data view with the new content being passed into the first view
        dismiss(animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
