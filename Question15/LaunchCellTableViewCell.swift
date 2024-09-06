//
//  LaunchCellTableViewCell.swift
//  Question15
//
//  Created by Abouzar Moradian on 9/6/24.
//

import UIKit

class LaunchCellTableViewCell: UITableViewCell {

    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var descriptLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    static let identifier = "LaunchCellTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
