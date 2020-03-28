//
//  ViewController.swift
//  firebasecrashcourse
//
//  Created by Anna Zislina on 27/03/2020.
//  Copyright © 2020 Anna Zislina. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ref = Database.database().reference()
        
//MARK: Creating data
        
        //Specify the key path to the location to insert the data to:
        //ref.child("someid-name").setValue("Anna")
        
        //Auto-generated random unique key:
        //ref.childByAutoId().setValue(["name":"Tom", "role":"Admin", "age":"30"])
        
//MARK: Reading the data
        
//        ref.child("someid/name").observeSingleEvent(of: .value) { (snapshot) in
//            let employeeData = snapshot.value as? [String:Any]
//        }
        
//MARK: Updating data
        
        //ref.child("someid/name").setValue("John")
        
        //Update several values at once:
//        let updates = ["someid/name":"John", "-M3Vdj7D2hcoMNUw9T0e/name":"David"]
//        ref.updateChildValues(updates)
        
        
//MARK: Deleting data
        
        ref.child("someid").removeValue()
    }


}

