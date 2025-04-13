//
//  ViewController.swift
//  A252MemoryLeak
//
//  Created by 申潤五 on 2025/4/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func demo1(_ sender: Any) {
        var sample:MemoryLeakSample? = MemoryLeakSample()
        sample?.setClosure()
        sample = nil
    }
    
    @IBAction func demo2(_ sender: Any) {
        
//        var sample:MemoryLeakSample? = MemoryLeakSample()
//        sample?.startTimer()
//        sample = nil
        
    }
}

