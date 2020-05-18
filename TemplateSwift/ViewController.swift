//
//  ViewController.swift
//  TemplateSwift
//
//  Created by Worm on 2020/5/15.
//  Copyright © 2020 Worm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model:HXModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model = HXModel.init()
        model?.age = 1
        print(model?.age ?? "")
    }
}

