//
//  ConverterViewController.swift
//  ConversionCalculator
//
//  Created by Austin Dotto on 4/13/18.
//  Copyright © 2018 Austin Dotto. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    
    func convertMilesToKilometers(_ Miles: Double) -> Double
    {
        let miles = Miles * 1.60934
        return miles
    }
    
    func convertKilometersToMiles(Kilo: Double) -> Double
    {
        let kilo = Kilo/1609.344
        return kilo
    }
    
    func convertCelsiusToFahrenheit(TempF: Double) -> Double
    {
        let fahrenheitTemp = TempF * 9 / 5 + 32
        return fahrenheitTemp
    }
    
    func convertFahrenheitToCelsius(TempC: Double) -> Double
    {
        let celsiusTemp = (TempC - 32) * (5/9)
        return celsiusTemp
    }
    
    

    @IBAction func converterButton(_ sender: Any) {
    }
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outDisplay: UITextField!
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

}
