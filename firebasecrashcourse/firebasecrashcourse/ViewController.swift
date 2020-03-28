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
        
        //specify the key path to the location to insert the data to:
        //ref.child("someid-name").setValue("Anna")
        
        //auto-generated random unique key:
        ref.childByAutoId().setValue(["name":"Tom", "role":"Admin", "age":"30"])
    }


}

