//
//  main.swift
//  ComputerPurchase
//
//
import Foundation

// INPUT
// Global variable, tracks how many computers we are going to collect specs for
// Write a loop to actually determine how many computer specs the user will provide
// e.g.: write the rest of the INPUT section

var countOfExpectedSpecsThatWillBeProvided = 3

while 1 == 1 {
    print("How many specs will be provided?")
    let input = readLine()

    // Test #1: Make sure it's not nil
    
    guard let givenInput = input else {
        continue
    }
    
    // Test #2: Check for integer
    guard let validInput = Int(givenInput) else {
        continue
    }
    
    //Test #3: Check if it's in the correct range
    if validInput <= 0 || validInput > 10 {
        continue
    }
    countOfExpectedSpecsThatWillBeProvided = validInput
    
    break
}



// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

var specInput = "SuperFastComputer 1000 50 75"
// Collect the list of computer specs here

for counter in 1...countOfExpectedSpecsThatWillBeProvided {
    
    // Ask user for the specs for a given computer
    print("Spec \(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    specInput = givenInput
    
   
    
    
    // NOTE:
    //
    // Some example code that may be useful
    var bestComputer = 0

    print("The spec input is: \(specInput)")
    let specInputPieces = specInput.split(separator: " ")
    let computerName = specInputPieces[0]
    let computerRAM = specInputPieces[1]
    let computerCPU = specInputPieces[2]
    let computerDiskSpace = specInputPieces[3]
    print("Computer name is: \(computerName)")
    print("Computer RAM amount is: \(computerRAM)")
    print("Computer CPU speed is: \(computerCPU)")
    print("Computer disk space is: \(computerDiskSpace)")
    
    
    // What was provided?
    
    // Implement the rest of your logic here...
    
    let fomulaValue = 2 * Int((computerRAM))! + 3 * Int((computerCPU))! + Int(computerDiskSpace)!
    print(fomulaValue)
    if fomulaValue > bestComputer {
        bestComputer = fomulaValue
    }
    print("The best computer is \(computerName)")
}

    
    

