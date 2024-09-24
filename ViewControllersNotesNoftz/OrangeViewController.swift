//
//  OrangeViewController.swift
//  ViewControllersNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 9/23/24.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var orangeTextFieldOutlet: UITextField!
    
    
    // variable ready to accept a value from ViewController
    var theName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // this one loads every time (gets loaded and put on top of white one)
        print("orange loading")
        
        nameLabel.text = theName
        
        // using a class to do the easy way of transferring between VCs
        nameLabel.text = AppData.nameo

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
