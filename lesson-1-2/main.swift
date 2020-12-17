import Foundation
import Darwin.C.math

// function that determines whether the number is even or not
func evenNumbers(){
    let arr = [2,35,3,4,5,6,23,546,775] // let's set the numbers
    var evenNum:[Int] = [] // enter only even numbers
    var notEvenNum:[Int] = [] // enter non-even numbers
    for n in 0..<arr.count{
        var valueArr = arr[n]
        valueArr = valueArr % 2
        if(valueArr == 0){
            evenNum.append(arr[n])
        }
        if(valueArr > 0){
            notEvenNum.append(arr[n])
        }
    }
    print("Even numbers - \(evenNum)")
    print("Non-even numbers - \(notEvenNum)")
}
// function that determines whether a number is divisible by 3 without remainder.
func DivWitRemThree(){
    let arr = [2,35,3,4,5,6,23,546,775] // let's set the numbers
    var divByThree:[Int] = [] // Here we enter the numbers that are divisible by 3
    for n in 0..<arr.count{
        var valueArr = arr[n]
        valueArr = valueArr % 3
        if(valueArr == 0){
            divByThree.append(arr[n])
        }
    }
    print("These numbers are divisible without remainder by 3 - \(divByThree)")
}
// the function creates an increasing array of 100 numbers.
func incrArrHundred(){
    var arr:[Int] = []
    var evenNum:[Int] = []
    var divByThree:[Int] = []
    var numRow = 1;
    // generate an array from 1 to 100
    for _ in 0...99{
        arr.append(numRow)
        numRow += 1
    }
    // find only even numbers
    for n in 0..<arr.count{
        var valueArr = arr[n]
        valueArr = valueArr % 2
        if(valueArr != 0){
            evenNum.append(arr[n])
        }
    }
    // find the numbers that are divisible by 3
    for n in 0..<evenNum.count{
        var valueArr = evenNum[n]
        valueArr = valueArr % 3
        if(valueArr == 0){
            divByThree.append(evenNum[n])
        }
    }
    print("An increasing array of 100 numbers - \(divByThree)")
}

/*
 Attention: In task # 6, had to write a function that would add 100
 elements of the Fibonacci number sequence to the array. I may have
 misunderstood something, but it is not possible to do this due to
 the limitations of the “swift” language, it cannot summa
 4660046610375530309 with 7540113804746346429. The maximum that is
 possible is 93 elements. I did on 20 elements.
*/

// А function that adds a new fibonacci number to the array
func fiboNumbers(){
    var arr = [0,1]
    var firstNum :Int64 = 0
    var secondNum :Int64 = 1
    for _ in 0...20{
        let summ :Int64 = Int64(firstNum + secondNum)
        firstNum = secondNum
        secondNum = Int64(Int(summ))
        arr.append(Int(summ))
    }
    print("The fibonacci number sequence - \(arr)")
}
// the function fills an array of 100 elements with different primes
func PrimeNum(){
    var arr : [Double] = []
    var priNum : Double = 2
    repeat {
        var twoNum = 0
        for n in 1...Int(priNum){
            let x : Double = priNum/Double(n)
            let isInteger = floor(x) == x // Let's determine whether the number "x" is an integer
            if(isInteger == true){
                twoNum += 1
            }
        }
        if(twoNum == 2){
            arr.append(priNum)
            priNum += 1
        }else{
            priNum += 1
        }
    } while (arr.count < 100)
    print("One hundred prime numbers - \(arr)")
}

// declaring functions
evenNumbers()
DivWitRemThree()
incrArrHundred()
fiboNumbers()
PrimeNum()



