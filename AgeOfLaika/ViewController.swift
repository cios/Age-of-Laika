//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Daniel Esquivias on 9/14/14.
//  Copyright (c) 2014 Complete iOS 8 with Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertYearsTouchUpInside(sender: UIButton) {
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        let conversion = 7.0
        dogYearsLabel.text = "\(humanYears * conversion) Dog Years"
        
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsTouchUpInside(sender: UIButton) {
//        Change the conversion method (which evaluates when your UIButton is touched) to use if statements. The real conversion for dog years is as follows; Each human year equals 10.5 dog years for the first two years, and then 4 dog years for each human year after. Sounds like a word problem? Well, it is. You will find yourself frequently taking what is asked of you, and translating that into code in your project. Again, best of luck!
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        let dogYearsAfterTwo = humanYears - 2
        let dogYearsBeforeTwo = humanYears - dogYearsAfterTwo
        dogYearsLabel.text = "\((dogYearsBeforeTwo * 10.5) + (dogYearsAfterTwo * 4)) Real Dog Years"
    }
}

