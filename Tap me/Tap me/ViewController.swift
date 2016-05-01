//
//  ViewController.swift
//  Tap me
//
//  Created by Vu Hoang on 4/30/16.
//  Copyright © 2016 Vu Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var timeLabel: UILabel!
	@IBOutlet var scoreLabel: UILabel!
	var count = 0
	var seconds = 0
	var timer = NSTimer()
	override func viewDidLoad() {
		super.viewDidLoad()
		setupGame()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBAction func buttonPressed() {
		NSLog("Button Pressed")
		scoreLabel.text = "Pressed"
		count++
		scoreLabel.text = "Score \n\(count)"
	}
	func setupGame() {
		seconds = 10
		count = 0
		timeLabel.text = "Time: \(seconds)"
		scoreLabel.text = "Score: \(count)"
		timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("Subtractime"), userInfo: nil, repeats: true)
	}
	func Subtractime() {
		seconds--
		timeLabel.text = "Time: \(seconds)"
		if (seconds == 0) {
			timer.invalidate()
			let alert = UIAlertController(title: "Time is up!", message: "Your score \(count) point", preferredStyle: UIAlertControllerStyle.Alert)
			alert.addAction(UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {
				action in self.setupGame()
				}))
			presentViewController(alert, animated: true, completion: nil)
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

