//
//  CustomTableViewCell.swift
//  Favorite movies
//
//  Created by Нурсултан Туругельдиев on 07.11.2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var movieYear: UILabel!
    @IBOutlet var favButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
