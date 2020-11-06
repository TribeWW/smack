//
//  Channel.swift
//  Smack
//
//  Created by Matthias Plancke on 24/10/2020.
//  Copyright © 2020 Matthias Plancke. All rights reserved.
//

import Foundation

struct Channel : Decodable {
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
}
