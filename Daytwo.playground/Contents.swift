import UIKit

var greeting = "Hello, playground"

/*
 
 loops:
 
 While
 do while
 for
 
 */

let names = ["Alice", "Bob", "Charlie"]

for name in names {
    print(name)
}
// for reverse
for name in names.reversed() {
    print(name)
}
/* for i = 0;i<n;i++
{
    
} */

for n in 0..<names.count {
    print(n)
}

for (index,name) in names.enumerated() {
    print("name is \(name) at index \(index)")

}

for index in stride(from: names.count, to:0, by: -1) {
    print(index)
}


/* Classes
 
 classes starts with capital letter
 
 classes are reference type
 
 if you modify an object with same refernce it will effect the other object eg: like joint account
 
 it supports inheritence
 
 classes objects are stored in heap memory
 
 classes obj are mutuable by default
 */

class Human {
    var nname =  " "
    var agge = 0
    
    func Hello() {
        print(nname)
        print(agge)
    }
    
}

let amruth = Human()

amruth.nname = "amruth"
amruth.agge = 25


let kallyam = amruth
kallyam.nname = "kallyam"
kallyam.agge = 26

amruth.Hello()
kallyam.Hello()


/* Struct
 
 struct are value type
 if you modify on object with same refernce it will not affect the other object
 
 it doesnt support inheritance
 
 struct stores in stack memory
 
 struct obj are immutable by default 
 */

struct Human1 {
    var nname =  " "
    var agge = 0
    
    func Hello() {
        print(nname)
        print(agge)
    }
}

var car = Human1()

car.nname = "BMW"
car.agge = 13

var bike = car

bike.nname = "Honda"
bike.agge = 1

car.Hello()
bike.Hello()


/* enums
 
 extension of boolean
 
 Associated value : in enum we can pass additional values to each other , these are call as associated value : Case one
 
 raw value : individual case has value : case one = "one"
 
 we cant have both associated and raw value in same enum
 
 */

enum Direction{
    case east;
    case north;
    case south;
    case west;
}

var dir = Direction.east

dir = Direction.north


enum Status {
    case Success
    case failure(reason : String)

}

let status = Status.Success

let failure = Status.failure(reason: "some error")


/*
 protocols : set of rules
 
 
 protocols is blue print of methods and varibales,
 
 
 
 
 
 */

protocol LoginProtocol {
    func login(username : String, password: String)
    func signup()
}

class Login : LoginProtocol {
    func signup() {
      
    }
    
    func login(username: String, password: String){
        
    }
    
}

/* extension
 
 
 
 */
