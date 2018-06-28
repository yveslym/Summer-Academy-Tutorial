//
//  ListNotesTableViewCell.swift
//  Make School Note App
//
//  Created by Yveslym on 6/28/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import UIKit

class ListNotesTableViewCell: UITableViewCell {

    @IBOutlet weak var NoteTitleLabel: UILabel!
    @IBOutlet weak var ModificationDataLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
