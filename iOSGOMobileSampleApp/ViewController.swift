//
//  ViewController.swift
//  iOSGOMobileSampleApp
//
//  Created by Adriana Pineda on 5/24/16.
//  Copyright © 2016 Adriana Pineda. All rights reserved.
//

import UIKit
import FrameworkGOMobileSample

class ViewController: UIViewController {

    @IBOutlet weak var sumResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {

        let sum = self.sum(1, b: 2)
        self.sumResult.text = "Sum 1+2 = \(sum)"

    }

    func sum(a: Int32, b: Int32) -> Int32 {
        let sample: iOSSample = iOSSample()
        return sample.sum(a, b: b)
    }
}

