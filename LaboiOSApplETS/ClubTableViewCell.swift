//
//  ClubTableViewCell.swift
//  LaboiOSApplETS
//
//  Created by Thanh-Son-Philippe Lam on 17-05-08.
//  Copyright © 2017 Thanh-Son-Philippe Lam. All rights reserved.
//

import UIKit

class ClubTableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var clubIconImageView: UIImageView!
    @IBOutlet weak var clubNameLabel: UILabel!
    @IBOutlet weak var localLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
