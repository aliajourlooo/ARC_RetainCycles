//
//  PopUpDelegate.swift
//  ARC_RetainCycles
//
//  Created by shahin miraftabi on 2/12/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class PopUpDelegate: UIViewController {

    // one wayy of breaking the retainCycle
     var delegate : Passer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.passtheName(name: "alireza")

    }
    @IBAction func dismissPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    deinit {
        print("deinitialized PopUpDelegate")
    }
    

}

// because we wanna swift know that this protocol is only availbel for clases(reffrence Tyypes) not structs(value types)

protocol Passer  :AnyObject{
    func passtheName(name : String)
}
