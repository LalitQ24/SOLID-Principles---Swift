import UIKit

//Liskov substitution Principle
// It states that Objects of a superclass should be replaceable with objects of a subclass without affecting the correctness of the program. In other words, subclasses should be able to extend the behavior of the superclass without breaking the functionality that the superclass provides

//-->  Subclass compatibility
//---  Preserve behavior
//--   Polymorphism
// --- Use Protocols for abstratctions


protocol Flyable {
    func fly() -> String
}

class Bird {
    // Non-flying behavior can stay in Bird class
    func makeSound() {}
}

class Pigeon: Bird, Flyable {
    func fly() -> String {
        return "Flying "
    }
}

class Penguin: Bird {
    func swim() -> String {
        return "Swimming"
    }
    
    func canFly() -> Bool {
        return false
    }
}

func testCanFlyBird(bird: Flyable) {
    print(bird.fly())
}

let pigeon = Pigeon()
testCanFlyBird(bird: pigeon)

let penguin = Penguin()
print(penguin.swim())
print(penguin.canFly())




