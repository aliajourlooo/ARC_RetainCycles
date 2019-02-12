//
//  PopUpNotification.swift
//  ARC_RetainCycles
//
//  Created by shahin miraftabi on 2/12/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class PopUpNotification: UIViewController {

    let bigil = NSNotification.Name.init("bigil")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
    
    
    //MARK: Functiions
    @IBAction func dis(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func notifyPressed(_ sender: Any) {
         NotificationCenter.default.post(name: bigil, object: self)
    }
    
    deinit {
        print("deinitialized PopUpNotification")
    }
    
}
