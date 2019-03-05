//
//  ViewController.swift
//  TableView
//
//  Created by Kaelyn Rakharo on 05/03/2019.
//  Copyright © 2019 Kaelyn Rakharo. All rights reserved.
//

import UIKit

var data: [String] = ["One", "Two", "Three", "Four", "Five", "Six"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet weak var tableView: UITableView!

	@available(iOS 2.0, *)
	public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return data.count
	}

	@available(iOS 2.0, *)
	public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let cell = tableView.dequeueReusableCell(withIdentifier: "cellident", for: indexPath)
		cell.textLabel?.text = data[indexPath.row]
		return cell
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

