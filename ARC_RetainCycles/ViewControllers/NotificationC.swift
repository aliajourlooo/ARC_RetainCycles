//
//  ViewController.swift
//  ARC_RetainCycles
//
//  Created by shahin miraftabi on 2/12/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class NotificationC: UIViewController {

    let bigil = NSNotification.Name.init("bigil")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myFunc(_:)), name: bigil, object: nil)
    }

    @objc func myFunc (_ notification : Notification)
    {
        guard let popUp = notification.object as? PopUpNotification else {return}
        
        print("bigilCaled")
    }
    
    @IBAction func dis(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    deinit {
        print("deinitialized NotificationC")
    }
    
    //TODO: here i'm trying to find out should i remove observer's of swift dose that for me ?
}

