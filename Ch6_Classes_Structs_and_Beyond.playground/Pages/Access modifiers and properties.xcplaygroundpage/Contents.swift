/*:
 # Basic Swift Classes
 ---
 
 ## Topic Essentials
 Even though swift has an entire library of built-in classes and structs for us to use in our applications, we’ll still need to know how to create our own. These data structures can have properties, methods, initializers, and in the case of classes can have their own subclasses.
 
 ### Objectives
 + Create a simple class called **Adventurer**
 + Declare instance properties with or without values
 + Define designated and convenience initializers
 + Understand reference type behavior
 
 [Next Topic](@next)
 
 */
// Declaring a new class
class Adventurer {
    var name: String
    let maxHealth: Int
    var specialMove: String?
    
    var healthLost: Int {
        return maxHealth - health
    }
    
    static var maxActivePlayers = 10
    class var credo: String {
        return "Defend the helpless!"
    }
    
    fileprivate var health: Int
    var Health: Int {
        get { return health }
        set {
            if (newValue <= 100) {
                health = newValue
            }
        }
    }
    
    init(name: String, maxHP: Int) {
        self.name = name
        self.maxHealth = maxHP
        self.health = maxHP
    }
    
    convenience init(name: String) {
        self.init(name: name, maxHP: 100)
    }
    func printStats() {
        print("Character: \(self.name), Health: \(self.health)/\(self.maxHealth)")
    }
}

var player1 = Adventurer(name: "Saif", maxHP: 99)
var player2 = Adventurer(name: "Harrison")
var defaultPlayer = player1
defaultPlayer.name = "Bob the Noob"

Adventurer.credo
Adventurer.maxActivePlayers

player1.printStats()
player2.printStats()

