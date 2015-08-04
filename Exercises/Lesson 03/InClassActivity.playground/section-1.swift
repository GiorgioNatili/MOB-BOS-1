// Intro to Swift in class playground

// This is the MOB 101 SWIFT Programming for Bo-Huei Lin
// Exercise 3 - Day 3 on August 10th, 2015


import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.
var name:String = "Bo-Huei Lin"
var age:Int = 30


// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"

println("Hello \(name), you are \(age) years old!")


// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

if age >= 21 {
    println("You can drink")
} else if  age > 18 {
    println("You can vote")
} else if age > 16 {
    println("You can drive")
}


// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

if (age < 18) && (age > 16) {
    println("You can drive!!")
} else if (age > 18) && (age < 21) {
    println("You can drive and vote")
} else if (age > 21) {
    println("You can drive, vote and drink (but not at the same time!!!!")
}





// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

let range = 1...50

for i in range {
    if i % 7 == 0 {
    println(i - 1)
}
}

// TODO: Create a constant called number

let number = 20


// TODO: Print whether the above number is even

if (number % 2 == 0) {
    println("The above number is even!!")
} else {
    println("The above number is NOT even!!!!!!")
}


// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

var characters = count(name)

println("Hello \(name), your name is \(characters) characters long!!.")




// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

let random = (rand() % 100)

for var r=0; r<100; r++ {
    println((rand() % 100))
}

let sum = [r]

total = sum.reduce(0, combine:+)


println("The Sum of one hundred random numbers are: \(sum)")





// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.


let bonus1 = 1...100

for i in bonus1 {
    if i % 3 == 0 {
        println("Fizz")
    }
 else if i % 5 == 0 {
        println("Buzz")
} else if (i % 3 == 0) && (i % 5 == 0) {
        println("FizzBuzz")
}
}


// BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below


//let bonus2 =

