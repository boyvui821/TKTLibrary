//
//  ConclutionGeneralItemView.swift
//  TKTLibrary
//
//  Created by Nguyen Hieu Trung on 9/30/20.
//  Copyright © 2020 NHTSOFT. All rights reserved.
//

import UIKit

class ConclutionGeneralItemView: BaseView {
    @IBOutlet weak var titleLabel: UILabel!
    
    func setupData(data: EndData){
        let lang =  TKTCLoud.shared.getConfig()?.lang
        if lang == .VI{
            titleLabel.text = data.valueVI
        }else{
            titleLabel.text = data.valueEN
        }
    }
}

