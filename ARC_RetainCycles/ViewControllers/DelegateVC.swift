//
//  DelegateVC.swift
//  ARC_RetainCycles
//
//  Created by shahin miraftabi on 2/12/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class DelegateVC: UIViewController , Passer{
    
    @IBOutlet weak var haminjooriLable: UILabel!
    
    //all variables have string refrence (keep in mind byy defualt is Strong
     weak var popUpDel  : PopUpDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func dis(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    deinit {
        print("deinitialized DelegateVC")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //I could create popUpDel here (local variable )and prevent from retainCycle
          popUpDel = segue.destination as? PopUpDelegate
            popUpDel?.delegate = self
        
    }
    
    //Delegate
    func passtheName(name: String) {
        print("my name is \(name)")
        //self.haminjooriLable.text = "haminjoori"
    }
}
