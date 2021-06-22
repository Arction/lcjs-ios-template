//
//  ViewController.swift
//  iOS
//
//  Created by Alexander  on 1.6.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var yData: UITextField!
    @IBOutlet weak var xData: UITextField!
   
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var generateBtn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.yData.delegate = self
        self.xData.delegate = self
    }
    
    // hide keyboard by click 'return'
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return (yData.resignFirstResponder() || xData.resignFirstResponder() )
    }
    
    // hide keyboard by clicking anywhere
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func alert(msg: String){
        let alert = UIAlertController(title: "Wrong format", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        
        present(alert, animated: true)
    }

    @IBAction func addData(){
        
        let vc = storyboard?.instantiateViewController(identifier: "chart") as! ChartViewController
        
        let yString = yData.text!.components(separatedBy: CharacterSet.decimalDigits.inverted)
        for item in yString {
            if let arr = Int(item) {
                vc.yData.append(arr)
            }
        }
        
        let xString = xData.text!.components(separatedBy: CharacterSet.decimalDigits.inverted)
        for item in xString {
            if let arr = Int(item) {
                vc.xData.append(arr)
            }
        }

        let hasErr = vc.yData.count == vc.xData.count

        if (hasErr) {
            present(vc, animated: true)
        } else {
            alert(msg: "the input should be in format '1,2,3' and length of x-values & y-values must be the same")
        }
    
    }

    @IBAction func generateData(){
        let vc = storyboard?.instantiateViewController(identifier: "chart") as! ChartViewController
        vc.check = true
        present(vc, animated: true)
    }

}

