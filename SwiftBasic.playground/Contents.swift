//: Playground - noun: a place where people can play

import UIKit

var cokesleft = 7
var fantaLeft = 3
while (cokesleft > 0) {
    print(cokesleft)
    cokesleft = cokesleft - 1
    if (cokesleft <= fantaLeft) {
        break
    }
}
print("You stop drink Coke.")
var goofOffTime = 10
var bossComing = 0
while(goofOffTime > 0)  {
    print("Goofing off!")
    goofOffTime = goofOffTime - 1
    bossComing = bossComing + 1
    if(goofOffTime == bossComing)  {
        break
    }
}
print("Done goofing off.")
// [10,1] [9,2] [8,3] [7,4] [6,5] 

var numbers = 0
while(numbers <= 10) {
    if(numbers == 9) {
        numbers = numbers + 1
        continue
    }
    print(numbers)
    numbers = numbers + 1
}