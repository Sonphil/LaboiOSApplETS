//
//  Club.swift
//  LaboiOSApplETS
//
//  Created by Thanh-Son-Philippe Lam on 17-05-08.
//  Copyright © 2017 Thanh-Son-Philippe Lam. All rights reserved.
//

import UIKit

class Club: NSObject {
    var nom: String
    var icone: UIImage;
    var local: String
    var site: URL
    
    init!(nom: String, icone: UIImage, local: String, site: URL) {
        self.nom = nom;
        self.icone = icone;
        self.local = local;
        self.site = site;
    }
}
