//
//  MyCustomCell.swift
//  OneProjetcGitHub
//
//  Created by Ana Paula Silva de Sousa on 07/03/23.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet var label: UILabel!
    @IBOutlet var imageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setup(rockCell: Rock) {
        label.text = rockCell.name
        imageCell.image = UIImage(named: rockCell.image)
    }
}
