//
//  CollectionTableViewCell.swift
//  CollectionCell
//
//  Created by Lucas Werner Kuipers on 05/04/2021.
//

import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
	
	// CollectionView
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return models.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
		cell.configure(with: models[indexPath.row])
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 250, height: 250)
	}
	
	static let identifier = "CollectionTableViewCell"
	
	static func nib() -> UINib {
		return UINib(nibName: "CollectionTableViewCell", bundle: nil)
	}
	
	func configure(with models: [Model]) {
		self.models = models
		collectionView.reloadData()
	}
	
	@IBOutlet var collectionView: UICollectionView!
	
	var models = [Model]()

    override func awakeFromNib() {
        super.awakeFromNib()
		
		self.collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
		collectionView.delegate = self
		collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
