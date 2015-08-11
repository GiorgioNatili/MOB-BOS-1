import Foundation

var name = "Max Blaushild"

var age = 25

println("Hello \(name), you are \(age) years old")

if age > 16 {
    println("You can drive")
} else {
    println("sucks to suck")
}

var range = 1...50

for i in range {
    println("\(i * 7 - 1)")
}

let number = 12

if number % 2 == 0 {
    println("even")
}

println("Hello \(name), your name is \(count(name)) characters long!")

var sum:UInt32 = 0

func getRandom100() -> UInt32 {
    var rangeTwo = 1...100
    for i in rangeTwo {
        sum += arc4random_uniform(100)
    }
    return sum
}

println(getRandom100())

func fillBuzz(){
    var range = 1...100
    for i in range {
        if i % 15 == 0 {
            println("fizzbuzz")
        } else if i % 5 == 0 {
            println("buzz")
        } else if i % 3 == 0 {
            println("fizz")
        } else {
            println("\(i)")
        }
    }
}

fillBuzz()

func fibonnaci() -> Int {
    var count = 1
    var x = 0
    var y = 1
    var temp = 0
    
    while count < 38 {
        temp = y
        y = x + temp
        x = temp
        count++
    }
    return temp
}

fibonnaci()

