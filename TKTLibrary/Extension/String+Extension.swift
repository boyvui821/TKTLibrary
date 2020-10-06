//
//  String+Extension.swift
//  TKTLibrary
//
//  Created by Nguyen Hieu Trung on 10/6/20.
//  Copyright © 2020 NHTSOFT. All rights reserved.
//

import UIKit

extension String{
    var localized: String {
        let currentLang = AppLanguage.shared.languageKey
        guard let path = Bundle(for: AppLanguage.self).path(forResource: currentLang,
                                                            ofType: "lproj")
            else {return ""}
        guard let bundle = Bundle(path: path) else {return ""}
        
        return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "").changeStringSwiftFormat
    }
    
    var changeStringSwiftFormat:String{
        return self.replacingOccurrences(of: "%s", with: "%@").replacingOccurrences(of: "%d", with: "%@")
            .replacingOccurrences(of: "\\r", with: "\r")
            .replacingOccurrences(of: "\\n", with: "\n")
    }
}

