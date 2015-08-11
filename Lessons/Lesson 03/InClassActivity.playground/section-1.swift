// Intro to Swift in class playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.

// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"


// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

// TODO: Create a constant called number


// TODO: Print whether the above number is even

// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

// BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below

var age:Int?
var name:String?

println("Hello \(name), you are \(age)")
println("Hello \(name), your name is countElements(name) characters long")

if age >= 21 {
    println("You can drive, vote, and drink, but not at the same time")
} else if age > 18 {
    println("You can vote")
} else if age > 16 {
    println("You can drive")
}

for var i = 0; i < 50 ; i++ {
    print(i * 7 - 1)
}

var number:Int?

if number! % 2 == 0 {
    println("number is even")
} else if number! % 1 == 0 {
    println("number is odd")
}


for var i = 0; i <= 100; i++ {
    if  (i % 3 == 0 && i % 5 == 0) {
        println("FIZZBUZZ")
    }
    else if (i % 3 == 0) {
        println("FIZZ")
    }
    else if (i % 5 == 0) {
        println("Buzz")
    }
    
}
func random() {
    for var i = 0; i <=50; i++ {
        var num = (rand() % 100)
        
        for var i = 0; i <= 50; i++ {
            var num1 = (rand() % 100)
             var count = num + num1;
            print(count)
        }
    }
}

func fibNow(x:Int) {
    for var i = 0; i < 37 ; i++ {
        var x = (i - 1) + (i - 2)
        print(x)
    }
}


