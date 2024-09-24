//
//  ViewController.swift
//  ViewControllersNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 9/23/24.
//


// using a class to transfer variables accross multiple VCs (not safe bc everyone has access to the variables)
class AppData {
    static var nameo = ""
}




import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // navigation controller:
        // yellow button, editor, navigation controller
        // puts back button on screen after you go to a different screen (instead of swiping down)
        // must have ghost arrow starting here! (check "is initial view controller")
        
        // only loads once
        // all other VCs just go on top of this one and then get peeled off when press back (this only loads once)
        print("white view did load")
        
        
    }
    
    // put something in here to make it happen when you return to white VC
    // happens any time this VC ends up being the one in the front
    override func viewWillAppear(_ animated: Bool) {
        print("white appearing")
    }
    

    @IBAction func manualAction(_ sender: Any) {
        
        print("Manual")
        
        // must do this BEFORE performing segue
        name = nameTextFieldOutlet.text!
        
        AppData.nameo = nameTextFieldOutlet.text!
        
        // inherited from UIViewController Class
        // "self" is like "this" from java (can also put nil -- both will work)
        performSegue(withIdentifier: "orangeSegue", sender: self)
        
    }
    
    // never call this function! this is automatically called when segue happens (happens when performSegue happens)
    // happens for every segue!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // checks which segue is running to avoid errors
        if segue.identifier == "orangeSegue" {
            
            // returns the view controller that you're going to
            // CASTING!! (use "as")
            // casting always gives you an optional (guarentee with !)
            // gets control of the VC we are going to
            // nvc = next view controller
            let nvc = segue.destination as! OrangeViewController
            
            // send the name variable over to the OrangeViewController
            nvc.theName = name
            
        }
        
        
    }
    
    
    
    
}

