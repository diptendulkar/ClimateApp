//
//  TestViewController.swift
//  Clima
//
//  Created by Diptendu Das on 19/04/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var testlabel: UILabel!
    var textPassOver : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        testlabel.text = textPassOver
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func bac(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
       
    }
}
