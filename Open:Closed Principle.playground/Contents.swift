import UIKit

//Open/Closed Principle (OCP)
// A module, class or function should be open for extension but closed for modification. This means You should be extend the beahivior of class without modifying the source code.

//---> Open for extension and closed for modificaiton
// protocols for behavior abstartion
//- Inheritance for class functionality
//--  Use of protocol oriented design, Genrics, composition

protocol Shape {
    func calculateFieldArea() -> Double
}

class RectangleField: Shape {
    var inPutwidth: Double
    var inputLength: Double
    init(inPutwidth: Double, inputLength: Double) {
        self.inPutwidth = inPutwidth
        self.inputLength = inputLength
    }
    
    func calculateFieldArea() -> Double {
        return inPutwidth * inputLength
    }
}

class SquareField: Shape {
    var inputSideValue: Double
    init(inputSideValue: Double) {
        self.inputSideValue = inputSideValue
    }
    
    func calculateFieldArea() -> Double {
        return inputSideValue * inputSideValue
    }
}

class AreaOfField {
    
    func area(shape: Shape) -> Double {
        return shape.calculateFieldArea()
    }
}

let objAreaOfFeild = AreaOfField()
let objRectangleField = RectangleField(inPutwidth: 10.0, inputLength: 5.0)
let objSqaureFeild = SquareField(inputSideValue: 10.0)

//print("Rectangle Field Area: \(objAreaOfFeild.area(shape: objRectangleField))")
//print("Square Field Area: \(objAreaOfFeild.area(shape: objSqaureFeild))")
