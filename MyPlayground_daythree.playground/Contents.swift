import UIKit

var greeting = "Hello, playground"


/*
Initilizer
Properties(stored,computed,
Guard Let
Function Varibles
Closures
Generics
 
 
 
// */
// //Initilizer : Its doesnt have return type
// //Two types of initilizer : 1. Designated Initilizers  2. Convenience Initilizers



 class Human {
 let age: Int
 let birth: Int
 init(age:Int,birth:Int)
 {
     self.age = age
     self.birth = birth
 }

 }
 let amruth = Human(age:20,birth:1990)
 


//Designated Initilizer : Primary In this need to ensure all stored properties are initilized
//Convenience Initilizer :



//Properties
//Computed Property : Its a computed property that doesnt have a storage property

var radius = 10.0
var area: Double {
    return radius * 100
}

print(area)

radius = 20
print(area)


//Static Properties : Its a property that belongs to the class itself and not to any instance of the class


//Guard Let : Its used to unwrap optionals, here else block return type is mandator

//Function variable : Its a variable that can hold a function as its value

closure : 
