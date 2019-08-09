//
//  GameTableViewCell.swift
//  demotableview3
//
//  Created by Daniel on 2019/8/9.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {

    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var photoimageView: UIImageView!
    @IBOutlet weak var gameIntro: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
