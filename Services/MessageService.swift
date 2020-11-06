//
//  MessageService.swift
//  Smack
//
//  Created by Matthias Plancke on 24/10/2020.
//  Copyright © 2020 Matthias Plancke. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        AF.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: HEADER1).responseJSON { (response) in
            
            
            if response.error == nil {
                //parse out the json
                guard let data = response.data else { return }
                do {
                    if let json = try JSON(data: data).array {
                        for item in json {
                            let name = item["name"].stringValue
                            let channelDescription = item["description"].stringValue
                            let id = item["_id"].stringValue
                            //we can now instantiate and create a new channel object
                            let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                            // store in the channel array
                            self.channels.append(channel)
                        }
                        print(self.channels[0].channelTitle)
                        completion(true)
                    }
                } catch {
                    debugPrint(error)
                }
                    
                //turn data into json which is an array - so we want to turn json into array object
            } else {
                completion(false)
                debugPrint(response.error as Any)
            }
        }
    }
}
