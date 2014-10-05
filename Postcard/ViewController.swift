//
//  ViewController.swift
//  Postcard
//
//  Created by Ray McKaig on 04/10/2014.
//  Copyright (c) 2014 Ray McKaig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var myView: UIView!
	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var messageTextField: UITextField!
	@IBOutlet weak var sendMailButton: UIButton!
	@IBOutlet weak var nameLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func sendMailButtonPressed(sender: UIButton) {

		messageLabel.text = messageTextField.text
		messageLabel.textColor = UIColor.redColor()
		messageLabel.hidden = false

		nameLabel.text = nameTextField.text
		nameLabel.textColor = UIColor.blueColor()
		nameLabel.hidden = false

		// clear message details
		nameTextField.text = ""
		messageTextField.text = ""

		// hide keyboard
		myView.endEditing(true)

		sendMailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
	}

}

