//
//  main.swift
//  PeopleDatabase
//
//  Created by Vu Hoang on 4/30/16.
//  Copyright © 2016 Vu Hoang. All rights reserved.
//

import Foundation
var response: String
var people: [Person]  = []
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

repeat {
var newPerson = Person()
	newPerson.enterInfo()
    // add people to the array to store it.
    people.append(newPerson)
	newPerson.printInfo()
    print("Number of people in the database: \(people.count)")
    print("Do you want to enter another name? (y/n)")
    response = input()
} while(response == "y")
for onePerson in people {
    onePerson.printInfo()
}
