//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kaelyn Rakharo on 05/03/2019.
//  Copyright © 2019 Kaelyn Rakharo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var labelHello: UILabel!
	@IBAction func buttonPushAction(_ sender: Any) {
		labelHello.text = "NewText!"
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

