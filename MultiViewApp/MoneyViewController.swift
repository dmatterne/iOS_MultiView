//
//  MoneyViewController.swift
//  MultiViewApp
//
//  Created by Stannis Baratheon on 29/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class MoneyViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var textSterling: UITextField!
    
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

    @IBAction func convertToDollars(_ sender: UIButton) {
        
        textSterling.resignFirstResponder()
        if let sterling = Double(textSterling.text!) {
            let result =  sterling  *  1.61
            labelResult.text = "Result: \(result) Dollars"
        }
        
    }
}
