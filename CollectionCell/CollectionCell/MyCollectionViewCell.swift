//
//  MyCollectionViewCell.swift
//  CollectionCell
//
//  Created by Lucas Werner Kuipers on 05/04/2021.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

	@IBOutlet var myLabel: UILabel!
	@IBOutlet var myImageView: UIImageView!
	
	static let identifier = "MyCollectionViewCell"
	
	static func nib() -> UINib {
		return UINib(nibName: "MyCollectionViewCell" , bundle: nil)
	}
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

	public func configure(with model: Model) {
		self.myLabel.text = model.text
		self.myImageView.image = UIImage(named: model.imageName)
		self.myImageView.contentMode = .scaleAspectFill
	}
	
}
