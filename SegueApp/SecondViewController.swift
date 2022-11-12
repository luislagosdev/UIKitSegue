//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Luis Lagos on 11/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    // to store the value from the the 1st VC
    var myName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Your name is: \(myName)"
    }
    

   

}
