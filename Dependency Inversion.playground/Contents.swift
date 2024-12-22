import UIKit

//Dependency Inversion Principle
// it state the high levels modules should not depend on low level modules, Both should depend on abastartcions, Abstractions should not depend on details. details should not depend on abstactions. this principle commonly used protocols. Protocols define the abstractions, and both high-level and low-level components depend on them.

//--> High level abstractions
//--> Dependency injection
//--> Promotes Losse coupling
//--> It is easier to testing and better maintainability.
//--> Use protocols to define abstraction

protocol AnimalProtcol {
    func sound()
}

class LionAnimal: AnimalProtcol {
    func sound() {
        print("🦁")
    }
}

class CatAnimal: AnimalProtcol {
    func sound() {
        print("🙀")
    }
}

class AnimalSound {
    let animal: AnimalProtcol
    init(animal: AnimalProtcol) {
        self.animal = animal
    }
    
    func soundOfAnimal() {
        animal.sound()
    }
}

let lionSound = LionAnimal()
let animalSound1 = AnimalSound(animal: lionSound)
animalSound1.soundOfAnimal()

let catSound = CatAnimal()
let animalSound2 = AnimalSound(animal: catSound)
animalSound2.soundOfAnimal()
