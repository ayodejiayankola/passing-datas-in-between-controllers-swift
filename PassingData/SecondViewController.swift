//
//  SecondViewController.swift
//  PassingData
//
//  Created by Ayodeji Ayankola on 1/27/21.
//

import UIKit

protocol canReceive {
    func dataReceived(data : String)
}

class SecondViewController: UIViewController {
    
    var delegate : canReceive?
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textInputField: UITextField!
    
    var data = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = data
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sendDataButton(_ sender: UIButton) {
        delegate?.dataReceived(data: textInputField.text!)
        dismiss(animated: true, completion: nil)
    }
}
