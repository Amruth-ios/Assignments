import UIKit

var greeting = "Hello, playground"
/*
 
 // 1  diff b/w struct and classes
 
 CLASSES: Its reference type.
 Its supports inheritance
 classes objects stored in heap memory
 classes objects are mutuable by default
 classes are slow compared to structs
 
 Struct: Its value type.
 It doesn't support inheritance.
 struct objects stored in stack memory
 Structs objects are immutable by default
 Structs are faster
 
 // 2. what is ref type and what is value type , expalin with example.
 
 Ref type : here where instances share the same memory  EX: Class
 Value Type : Here where instances keeps a unique copy . Ex:  Structs
 
 // 3.  why strcts are faster compare to classes
 Ans: Structs are fasters becasue it uses stack memeory where it is fixed and structs objects are immutable
 
 // 4.  how to mutate structs
 
You can mutate structs using mutating Keyword
 
 Mutation
 // .5 what is use of Mutating keyword
 
 Structs are immutable so to convert immutable to mutable we use mutating keyword, where it creates new object with updated values and drops the older object
 
 // 6.  what is enum
 
 Enum is group of fixed values
 
 // 7. what is associated type
 
 In Enum we can pass additional values to each case is called associated value
 
 // 8. diff b/w associated type and raw value
 
 Ans : Raw value is fixed and same for all cases, whereas associated value can vary per case
 
 // 9. what is protocol
 
 Ans : Protocol is set of rules, where its blue print of variables and functions.
 
 // 10. what is extensions
 Ans: its a feature where existing classes or structs like without change of their code
 
 // 11. what is use of protocols
 Ans : Code reusability
 
 // 12.  how to make function optional in protocol
 
 // 13. diff b/w heap memory and stack memory
 
 In Heap Access speed in Fast, In Stack Memory its slow
 Heap is used for storing large data whereas Stack is used for storing temp data
 Classes used Heap Memory, Struct uses stack memory
 
 // 14. where sturct obj get srored and where does clases object get stored
 Ans : Structs objects are stored in Stack Memory
         Classes objects are stored in Heap memory
*/

// create a calcular Class with basic mathematics operations, difine first rules using protocol

protocol MathOperations {
    
    func add(num1 : Int, num2: Int) -> Int
    func subtract( num1: Int,  num2: Int) -> Int
    func multiple( num1: Int,  num2: Int) -> Int
    func divide(num1: Int,  num2: Int) -> Int
}
class Calculator : MathOperations {
    
    func add(num1 : Int, num2 :  Int) -> Int {
        return num1 + num2
    }
    func subtract(num1 : Int, num2 :  Int) -> Int {
        return num1 - num2   
    }
    func multiple(num1 : Int, num2 :  Int) -> Int{
        return num1 * num2  
    }
    func divide(num1 : Int, num2 :  Int) -> Int{
        return num1 / num2
    }
}

let calc = Calculator()
print(calc.add(num1 : 10, num2 : 20))
print(calc.subtract(num1 : 10, num2 : 20))
print(calc.multiple(num1 : 10, num2 : 20))
print(calc.divide(num1 : 10, num2 : 20))

// create a integer array and write sorting logic (use any best sorting alogirithm, don't use inbuild sort function)

var arr = [34,5,6,3,5,9]

for i in 0..<arr.count {
    for j in 0..<arr.count-i-1 {
        if arr[j] > arr[j+1] {
            let a = arr[j]
            arr[j] = arr[j+1]
            arr[j+1] = a
           
        }
    }
}

print(arr)
