//
//  AppLanguage.swift
//  TKTLibrary
//
//  Created by Nguyen Hieu Trung on 10/6/20.
//  Copyright © 2020 NHTSOFT. All rights reserved.
//

import UIKit

class AppLanguage {
    static let shared = AppLanguage()
    private var AEON_LANGUAGE_KEY = "AEON_LANGUAGES_KEY"
//    private var languages_: [Languages] = []
    private var languageKey_: String = TKTLanguage.EN.rawValue
    var currentLanguageData: TKTLanguage?
    
    var languageKey: String{
        get{
            return languageKey_
        }
        set{
            languageKey_ = newValue
//            storeLanguageKey()
//            currentLanguageData = getLanguageForCurrentKey()
        }
    }
}
