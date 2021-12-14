//
//  SongTableViewCell.swift
//  ButtonXib
//
//  Created by Vladislav on 13.12.2021.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var songLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
