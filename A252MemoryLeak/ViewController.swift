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
        
        var sample:MemoryLeakSample? = MemoryLeakSample()
        sample?.startTimer()
        sample = nil
        
    }
    
    @IBAction func domo3(_ sender: Any) {
        let server = Server()
        for _ in 0..<100000 {
            let client = Client(server: server)
            server.addClient(client)
        }
        server.client.removeAll()
    }
    
    
    
    
}

