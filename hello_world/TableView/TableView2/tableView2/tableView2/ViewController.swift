//
//  ViewController.swift
//  tableView2
//
//  Created by Kaelyn Rakharo on 06/03/2019.
//  Copyright © 2019 Kaelyn Rakharo. All rights reserved.
//

import UIKit

var data: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet weak var tableView: UITableView!

	@available(iOS 2.0, *)
	public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return data.count
	}

	@available(iOS 2.0, *)
	public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cellident", for: indexPath)
		cell.textLabel?.text = data[indexPath.row]
		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		print(data[indexPath.row])
	}
	
	func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
		
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

