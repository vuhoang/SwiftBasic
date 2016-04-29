//
//  main.swift
//  My First Project
//
//  Created by Vu Hoang on 4/29/16.
//  Copyright © 2016 Vu Hoang. All rights reserved.
//

import Foundation

let answer = randomIntBetween(1, high: 100)

var turn = 1
//var guess = 7
while (true) {
    print("Guess #\(turn): Enter the number between 1 and 100.")
	let userInput = input()
	let inputAsInt = Int(userInput)
	if let guess = inputAsInt {
		if (guess > answer) {
			print("Lower")
		} else if (guess < answer) {
			print("Higher")
		} else {
			print("Correct! the answer was \(answer)")
			break
		}
	} else {
		print("Invalid input! Pls inter another number!")
		continue
	}
    turn = turn + 1
}
print("It took you \(turn) tries.")