//
//  ViewController.swift
//  Great Number Game
//
//  Created by Mac on 29/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var numberGuess: UITextField!

    var answer = 44
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submit(_ sender: UIButton) {
        
        if let number = Int(numberGuess.text!) {
            
            if number == answer {
            let alert = UIAlertController(title: "Correct", message: "\(number) was correct !!", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "Play again", style: UIAlertAction.Style.default, handler: nil))
                
                alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor.green.withAlphaComponent(0.2)

            // show the alert
            self.present(alert, animated: true, completion: nil)
                
            } else if number < answer {
                let alert = UIAlertController(title: "Worng", message: "\(number) is too low !!", preferredStyle: UIAlertController.Style.alert)

                // add an action (button)
                alert.addAction(UIAlertAction(title: "Guess again", style: UIAlertAction.Style.default, handler: nil))
                
                alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor.red.withAlphaComponent(0.2)

                // show the alert
                self.present(alert, animated: true, completion: nil)
            }else {
                
                let alert = UIAlertController(title: "Worng", message: "\(number) is to high !!", preferredStyle: UIAlertController.Style.alert)

                // add an action (button)
                alert.addAction(UIAlertAction(title: "Guess again", style: UIAlertAction.Style.default, handler: nil))
                
                alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor.red.withAlphaComponent(0.2)

                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
        }
    
      
}

}
