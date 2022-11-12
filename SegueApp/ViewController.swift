//
//  ViewController.swift
//  SegueApp
//
//  Created by Luis Lagos on 11/11/22.
//

import UIKit

class ViewController: UIViewController {

    var userName: String = ""
    
    @IBOutlet weak var nameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func nextButtonClicked(_ sender: Any) {
    
        // get the text from the TextField
        userName = nameTF.text!
        
        // navigate to the 2nd VC
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            //as casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName     // pass the text to the VC
        }
    }
    
}

