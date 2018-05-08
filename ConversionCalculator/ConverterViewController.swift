//
//  ConverterViewController.swift
//  ConversionCalculator
//
//  Created by Austin Dotto on 4/13/18.
//  Copyright © 2018 Austin Dotto. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    var tracker: Int = 1
    var number = String()
    var plusMinusTracker: Int = 1
    @IBOutlet weak var outputLabel: UITextField!
    @IBOutlet weak var inputLabel: UITextField!
    
    @IBAction func zeroButton(_ sender: Any) {
        number.append("0")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func oneButton(_ sender: Any) {
        number.append("1")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func twoButton(_ sender: Any) {
        number.append("2")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func threeButton(_ sender: Any) {
        number.append("3")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func fourButton(_ sender: Any) {
        number.append("4")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        number.append("5")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func sixButton(_ sender: Any) {
        number.append("6")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        number.append("7")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func eightButton(_ sender: Any) {
        number.append("8")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func nineButton(_ sender: Any) {
        number.append("9")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func decimalButton(_ sender: Any) {
        number.append(".")
        var data = Double(number)
        if plusMinusTracker == 2 {
            data = -(data)!
        }
        whichCalculation(userInput: data!)
    }
    
    @IBAction func plusMinusButton(_ sender: Any) {
        var data = Double(number)
            if plusMinusTracker == 1 && (data != nil) {
                data = -(data)!
                plusMinusTracker = 2
                whichCalculation(userInput: data!)
        } else {
            if plusMinusTracker == 2 && (data != nil) {
                data = data?.magnitude
                plusMinusTracker = 1
                whichCalculation(userInput: data!)
            }
        }
    }
 
    @IBAction func clearButton(_ sender: Any) {
        switch tracker {
        case 1 :    inputLabel.text = "°f"
                    outputLabel.text = "°c"
                    number = ""
                    plusMinusTracker = 1
        case 2 :    inputLabel.text = "°c"
                    outputLabel.text = "°f"
                    number = ""
                    plusMinusTracker = 1
        case 3 :    inputLabel.text = "mi"
                    outputLabel.text = "km"
                    number = ""
                    plusMinusTracker = 1
        case 4 :    inputLabel.text = "km"
                    outputLabel.text = "m"
                    number = ""
                    plusMinusTracker = 1
            
        default:
            print("There is an unexpected case")
        }
    }

    
    @IBAction func converterButton(_ sender: Any) {
        let alert = UIAlertController(title: "Conversion", message: "Choose your conversion", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Fahrenheit to Celsius", style: .default, handler: {
            (UIAlertAction) -> Void in
            if let conversion = Double(self.number){
                self.convertFahrenheitToCelsius(conversion)
                self.tracker = 1
            } } ))
        
        alert.addAction(UIAlertAction(title: "Celsius to Fahrenheit", style: .default, handler: {
            (UIAlertAction) -> Void in
            if let conversion = Double(self.number){
                self.convertCelsiusToFahrenheit(conversion)
                self.tracker = 2
            } } ))
        
        alert.addAction(UIAlertAction(title: "Miles to Kilometers", style: .default, handler: {
             (UIAlertAction) -> Void in
            if let conversion = Double(self.number){
                self.convertMilesToKilometers(conversion)
                self.tracker = 3
            } } ))
        
        alert.addAction(UIAlertAction(title: "Kilometers to Miles", style: .default, handler: {
            (UIAlertAction) -> Void in
            if let conversion = Double(self.number){
                self.convertKilometersToMiles(conversion)
                self.tracker = 4
            } } ))
        
        self.present(alert, animated: true, completion : nil)
   
    }
    
    func convertMilesToKilometers(_ Miles: Double)
    {
        let miles = Miles / 0.62137
        let outcome = String(format: "%.2f", miles)
        let input = String(Miles)
        outputLabel.text = outcome + "km"
        inputLabel.text = input + "mi"
    }
    
    func convertKilometersToMiles(_ Kilo: Double)
    {
        let kilo = Kilo *  0.62137
        let outcome = String(format: "%.2f", kilo)
        let input = String(Kilo)
        outputLabel.text = outcome + "mi"
        inputLabel.text = input + "km"
    }
    
    func convertCelsiusToFahrenheit(_ TempC: Double)
    {
        let fahrenheitTemp = TempC * (9/5) + 32
        let outcome = String(format: "%.2f", fahrenheitTemp)
        let input = String(TempC)
        outputLabel.text = outcome + "°f"
        inputLabel.text = input + "°c"
    }
    
    func convertFahrenheitToCelsius(_ TempF: Double)
    {
        let celsiusTemp = (TempF - 32) * (5/9)
        let outcome = String(format: "%.2f", celsiusTemp)
        let input = String(TempF)
        outputLabel.text = outcome + "°c"
        inputLabel.text = input + "°f"
    }
    
    func whichCalculation(userInput: Double){
        switch tracker {
        case 1 : convertFahrenheitToCelsius(userInput)
        case 2 : convertCelsiusToFahrenheit(userInput)
        case 3 : convertMilesToKilometers(userInput)
        case 4 : convertKilometersToMiles(userInput)
        default:
            print("There is an unexpected case")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        inputLabel.text = "°f"
        outputLabel.text = "°c"
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

}
