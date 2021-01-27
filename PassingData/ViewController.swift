//
//  ViewController.swift
//  PassingData
//
//  Created by Ayodeji Ayankola on 1/27/21.
//

import UIKit

class ViewController: UIViewController, canReceive {
 
    

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sendDataButton(_ sender: UIButton) {
        performSegue(withIdentifier: "sendData", sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendData" {
            let destinationVc = segue.destination as! SecondViewController
            destinationVc.data = inputTextField.text!
            
            destinationVc.delegate = self
        }
    }
    
    
    func dataReceived(data: String) {
        textLabel.text = data 
    }
}

