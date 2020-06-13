//
//  Constants.swift
//  Smack
//
//  Created by Matthias Plancke on 14/04/2020.
//  Copyright © 2020 Matthias Plancke. All rights reserved.
//

import Foundation
import Alamofire

typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://tuitourschat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

// Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers
let HEADER: HTTPHeaders = [
    "Content-Type": "application/json; charset=utf-8"
]
let HEADER1: HTTPHeaders = [
    "Authorization":"Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"
]
