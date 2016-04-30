//
//  Person.swift
//  PeopleDatabase
//
//  Created by Vu Hoang on 4/30/16.
//  Copyright © 2016 Vu Hoang. All rights reserved.
//

import Foundation

class Person {
	var firstName = ""
	var lastName = ""
    var age = 0
	func input() -> String {
		let keyboard = NSFileHandle.fileHandleWithStandardInput()
		let inputData = keyboard.availableData
		let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
		if let string = rawString {
			return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
		} else {
			return "Invalid input"
		}
	}
	func changeFirstName(newFirstName: String) {
		firstName = newFirstName
	}
	func enterInfo() {
		print("What is the first name?")
		firstName = input()
		print("What is the \(firstName)'s last name?")
		lastName = input()
		print("How old is \(firstName) \(lastName)?")
		let userInput = Int(input())
		if let number = userInput {
			age = number
		}
	}
	func printInfo() {
		print("\(firstName) \(lastName) is \(age) year old")
	}
}