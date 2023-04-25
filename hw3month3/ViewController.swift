//
//  ViewController.swift
//  hw3month3
//
//  Created by atay on 21/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var numberTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginTap(_ sender: Any) {
        if numberTF.text?.isEmpty ?? true{
            numberTF.layer.borderColor = UIColor.red.cgColor
            numberTF.layer.borderWidth = 1
            numberTF.placeholder = "Заполните"
        }else{
            let vc: TableViewController = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
       
    }
    
}

