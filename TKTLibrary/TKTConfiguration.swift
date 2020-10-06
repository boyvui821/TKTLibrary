//
//  TKTConfiguration.swift
//  TikiTechLibrary
//
//  Created by Nguyen Hieu Trung on 9/5/20.
//  Copyright © 2020 NHTSOFT. All rights reserved.
//

import Foundation
import UIKit

public class TKTConfiguration{
    public var domain: String = ""
    public var apiKey: String = ""
    public var email: String = ""
    public var lang: TKTLanguage?
    
    public init(domain:String, apiKey: String, email: String, language: TKTLanguage) {
        self.domain = domain
        self.apiKey = apiKey
        self.email = email
        self.lang = language
    }
}
