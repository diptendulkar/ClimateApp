//
//  ChangeCityViewController.swift
//  WeatherApp


import UIKit


//Write the protocol declaration here:
protocol ChangeCityDeligate {
    func userEnteredNewCityName ( city :  String)
}


class ChangeCityViewController: UIViewController {
    
    //Declare the delegate variable here:
    var deligate : ChangeCityDeligate?
    
    //This is the pre-linked IBOutlets to the text field:
    @IBOutlet weak var changeCityTextField: UITextField!

    
    //This is the IBAction that gets called when the user taps on the "Get Weather" button:
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
       
        //1 Get the city name the user entered in the text field
         let cityName  = changeCityTextField.text!
        
        //2 If we have a delegate set, call the method userEnteredANewCityName
        deligate?.userEnteredNewCityName(city: cityName)
        
        //3 dismiss the Change City View Controller to go back to the WeatherViewController
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        performSegue(withIdentifier: "getToTestScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getToTestScreen"{
        
        let destinationVC = segue.destination as! TestViewController
        
        destinationVC.textPassOver = changeCityTextField.text
        }
    }
}
