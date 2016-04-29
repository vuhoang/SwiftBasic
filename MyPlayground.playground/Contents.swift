//: Playground - noun: a place where people can play

import UIKit

func randomIntBetween(low:Int, high:Int) -> Int {
    let range = high - (low - 1)
    return (Int(arc4random()) % range) + (low - 1)
}

let answer = randomIntBetween(1, high: 100)
print("Enter the number between 1 and 100.")
var guess = 7
if (guess > answer) {
    print("Lower")
} else if (guess < answer) {
    print("Higher")
} else {
    print("Correct! the answer was \(answer)")
}

