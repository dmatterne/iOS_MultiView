//
//  TempViewController.swift
//  MultiViewApp
//
//  Created by Stannis Baratheon on 29/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class TempViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var textCelsius: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func convertToFahrenheit(_ sender: UIButton) {
        
        textCelsius.resignFirstResponder()
        
        if let temp_celsius = Int(textCelsius.text!) {
            let result =  temp_celsius  * 9 / 5 + 32
            
            labelResult.text = "Result: \(result) Fahrenheit"
        }
        
    }


}
