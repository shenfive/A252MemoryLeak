//
//  ClientServerSample.swift
//  A252MemoryLeak
//
//  Created by 申潤五 on 2025/4/13.
//

import Foundation

class Server {
    var client:[Client] = []
    
    func addClient(_ client:Client) {
        self.client.append(client)
    }
}

class Client {
    weak var server:Server!
    
    init(server: Server) {
        self.server = server
    }
    deinit {
        print("Client deinit")
    }
}
