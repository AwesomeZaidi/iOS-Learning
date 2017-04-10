/** By: Asim Zaidi, 05/10/17
 ** Swift 2.18 Exercise - Simple Math Operations In Swift (Udemy iOS 10/Swift 3 Course by Mark Price)
 ** http://blog.devslopes.com/p/6ba00483-166e-40d9-84e1-a7493dfdd175/
**/

//1. Create a variable with a name of your choosing that has a value of 15
var jennasSavings: Int = 15
// The int here is optional, going to stop using for basic scenarios later in the code.

//2. Create a 2nd variable with a name of your choosing that has a value of 5
var asimsSavings = 5

//3. Create a 3rd variable that stores that sum of the 1st and 2nd variables (20 should print to the screen)
var totalSavings = asimsSavings + jennasSavings

//4. Create a 4th variable that stores the result of a multiplication operation - the stored result should be equal to 45
var moneyRaised = asimsSavings * jennasSavings

//5. Create a 5th variable that stores the result of the 1st variable minus the 2nd variable - the result should be 10
var numbersSubstracted = jennasSavings - asimsSavings

//6. Create a 6th variable that stores the result of the 1st variable divided by the 2nd variable - the result should be 3
var numbersDivided = jennasSavings / asimsSavings

//7. Create 3 new variables of any name and of any value, but all on the same line
// This StackOverFlow explains the concept very well.
//http://stackoverflow.com/questions/32390934/same-datatype-multiple-variable-declaration-in-swift
var firtSon = 10, secondSon = 10, thirdSon = 10

//8. Create 3 constants (let) of any name and of any value, but all on the same line
let firstDaughter = 4, secondDaughter = 4, thirdDaughter = 4

//9. Create an explicit variable of any name of type Double and don't give it any value
var score: Double

//10. Create another explicit variable of any name of type Int but DO give it an initial value of 423
var miles: Int = 423

//11. Create a variable of type String with a value of "Hello"
var programmersFirstWord: String = "Hello"

//12. Create another variable of type String with a value of "World"
var programmersSecondWord: String = "World"

//13. Create a 3rd variable to store the result of concatenating the first two strings (using the + symbol)
var programmersFirstSentence = programmersFirstWord + programmersSecondWord

//14. Using that 3rd variable again, store the result of concatenating the first two string but instead using "(someVar)" syntax (string interpolation)
var stringInterPo = "\(programmersFirstWord) \(programmersSecondWord)"
