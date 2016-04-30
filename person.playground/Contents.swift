//: Playground - noun: a place where people can play

import UIKit

class Person {
    var firstName = ""
    var lastName = ""
    var age = 0
    func input() -> String {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding:NSUTF8StringEncoding)
        if let string = rawString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    func enterInfo(){
        print("Whai is the first name?")
        firstName = input()
    }
    func changeFirstName(newFirstName: String){
        firstName = newFirstName
    }
    func printInfo(){
        print("First Name: \(firstName)")
    }
}
var newPerson = Person()
newPerson.firstName = "Vu"
newPerson.lastName = "Hoang"
newPerson.age = 30
newPerson.changeFirstName("Paul")