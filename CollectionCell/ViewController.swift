//
//  ViewController.swift
//  CollectionCell
//
//  Created by Lucas Werner Kuipers on 05/04/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	// Table
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		4
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
		cell.configure(with: models)
		return cell
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 250.0
	}
	
	
	@IBOutlet var table: UITableView!

	var models = [Model]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		models.append(Model(text: "First", imageName: "puppy1"))
		models.append(Model(text: "Second", imageName: "puppy2"))
		models.append(Model(text: "Third", imageName: "puppy3"))
		models.append(Model(text: "Fourth", imageName: "puppy4"))
		models.append(Model(text: "Fifth", imageName: "puppy5"))
		models.append(Model(text: "First", imageName: "puppy1"))
		models.append(Model(text: "Second", imageName: "puppy2"))
		models.append(Model(text: "Third", imageName: "puppy3"))
		models.append(Model(text: "Fourth", imageName: "puppy4"))
		models.append(Model(text: "Fifth", imageName: "puppy5"))
		models.append(Model(text: "First", imageName: "puppy1"))
		models.append(Model(text: "Second", imageName: "puppy2"))
		models.append(Model(text: "Third", imageName: "puppy3"))
		models.append(Model(text: "Fourth", imageName: "puppy4"))
		models.append(Model(text: "Fifth", imageName: "puppy5"))
		models.append(Model(text: "First", imageName: "puppy1"))
		models.append(Model(text: "Second", imageName: "puppy2"))
		models.append(Model(text: "Third", imageName: "puppy3"))
		models.append(Model(text: "Fourth", imageName: "puppy4"))
		models.append(Model(text: "Fifth", imageName: "puppy5"))
		
		table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
		table.delegate = self
		table.dataSource = self
	}


}

struct Model {
	let text: String
	let imageName: String
	
	init(text: String, imageName: String) {
		self.text = text
		self.imageName = imageName
	}
}
