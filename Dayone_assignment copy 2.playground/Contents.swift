import UIKit

var greeting = "Hello, playground"

/*Assignment Questions:

 1. what is diff b/w var and let
Ans : The difference between var and let :

var : Its mutable
let : Its immutable

 2. how to create mutalbe and immutalbe varialbes
 
 Mutable:   var color = "Black";
            print(color)
 
 Immutable:  let pi = 3.14;
             print("pi value is : \(pi)")


 3. diff b/w explict and implict variables

Implicit : here we declare the value directly as system automatically assumes . Ex : var name = "Amruth"
 Explicit : Here we declare the type of variable while writing the code . Ex: var age : int = 23
 
 4. how to create optioanl variables
 
 var age : int?
 
 5. what is optioanl binding
 
 Its a way to check that optional variable has value or not , if it does, it uses the value by assigning temporary.
 
 6. how to unwrap optional variable
 
 var name : String?

 if let ename = name{
     print(ename)
 }
 else
 {
     print("null")
 }

 
 7. diff b/w nil colasing, if let and guard let
 
 if let : if optional variable has a value, it is use to unwrap it
 
 guard let :  if condition doesnt esist then it cant continue anymore , it will exit early
 
 nil coalescing : if variable is null still it uses somtheing else instead of null
 
 8. diff b/w array and dict and set
 
 Array : Ordered Collection with similar data type
 
 Dict : Unordered Collection , can be duplicate
 
 Set : Unordered Collection without duplicate
 
 9, can you assing a optional value to non optional variable , if yes how , if now why?
*/


var input = "abcabcasdf";
var result = String();

var first : Set<Character> = [];

for char in input {
    if !first.contains(char) {
        first.insert(char)
        result.append(char)
    }
}
print(result);

