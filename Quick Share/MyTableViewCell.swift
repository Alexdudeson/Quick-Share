//
//  MyTableViewCell.swift
//  Quick Share
//
//  Created by Alexey Yarov on 18.06.2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
