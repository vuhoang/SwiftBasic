//
//  ViewController.swift
//  Tap me
//
//  Created by Vu Hoang on 4/30/16.
//  Copyright © 2016 Vu Hoang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

	@IBOutlet var timeLabel: UILabel!
	@IBOutlet var scoreLabel: UILabel!
	var count = 0
	var seconds = 0
	var timer = NSTimer()
	// add audio in the project
	var buttonBeep: AVAudioPlayer?
	var secondBeep: AVAudioPlayer?
	var backgroundMusic: AVAudioPlayer?
	override func viewDidLoad() {
		super.viewDidLoad()
        if let buttonBeep = self.setupAudioPlayerWithFile("ButtonTap", type:"wav") {
            self.buttonBeep = buttonBeep
        }
        if let secondBeep = self.setupAudioPlayerWithFile("SecondBeep", type:"wav") {
            self.secondBeep = secondBeep
        }
        if let backgroundMusic = self.setupAudioPlayerWithFile("HallOfTheMountainKing", type:"mp3") {
            self.backgroundMusic = backgroundMusic
        }
		setupGame()
		// Do any additional setup after loading the view, typically from a nib.
        
	}

	@IBAction func buttonPressed() {
		NSLog("Button Pressed")
		scoreLabel.text = "Pressed"
		count++
		scoreLabel.text = "Score \n\(count)"
        buttonBeep?.play()
	}
    
	func setupGame() {
		seconds = 10
		count = 0
		timeLabel.text = "Time: \(seconds)"
		scoreLabel.text = "Score: \(count)"
		timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("Subtractime"), userInfo: nil, repeats: true)
        backgroundMusic?.volume = 0.3
        backgroundMusic?.play()
        
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
        secondBeep?.play()
	}
//	func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer {
//		let path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
//		let url = NSURL.fileURLWithPath(path!)
//		var audioPlayer: AVAudioPlayer?
//		do {
//			try audioPlayer = AVAudioPlayer(contentsOfURL: url)
//		} catch {
//			print("Audio not avalible")
//		}
//		return audioPlayer
//	}
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer?  {
        //1
        let path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
        let url = NSURL.fileURLWithPath(path!)

        //2
        var audioPlayer:AVAudioPlayer?

        // 3
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: url)
        } catch {
            print("Player not available")
        }

        return audioPlayer
    }

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

