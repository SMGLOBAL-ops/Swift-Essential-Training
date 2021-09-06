/*:
 # The SWITCH Statement
 ---
 
 ## Topic Essentials
 A switch statement takes a value and runs it against possible matching patterns, with each possible match having a different block of executable code. While that might sound boring, switch statements in Swift have a lot of features that make them excellent for decision logic.
 
 ### Objectives
 + Use a switch statement to execute different code for different **initial** values
 + Use a switch statement to evaluate multiple variables
 + Use value binding and the `where` keyword to add logic to more cases
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let initial = "A"
let hp = 22
let mp = 5

// Simple switch
switch initial {
case "H":
    print("I'm guessing Harold?")
case "A":
    print("Maybe Alita?")
default:
    print("I've got nothing...")
}

// Complex variations

switch (mp, hp) {
case (15, 10):
    print("Great job")
case (1...15, 20..<25):
    print("Ranges are the best!")
    // value binding example, where -> setting up expression
case (let localMP, let localHP) where localMP + localMP > 20:
    print(localMP, localHP)
default:
    print("I've got nothing...")
}
