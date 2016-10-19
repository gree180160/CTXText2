//
//  ViewController.swift
//  CTXText
//
//  Created by WillowRivers on 16/6/27.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var showArea1 : TextV! ;
    
    override func viewDidLoad() {
        super.viewDidLoad() ;
        view.backgroundColor = UIColor.whiteColor() ;
        showArea1 = TextV(frame: view.frame) ;
        showArea1.backgroundColor = UIColor.whiteColor() ;
        view.addSubview(showArea1) ;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

