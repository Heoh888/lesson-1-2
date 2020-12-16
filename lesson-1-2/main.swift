//
//  main.swift
//  lesson-1-2
//
//  Created by MacBook on 16.12.2020.
//
import Foundation

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
    var DivByThree:[Int] = [] // Here we enter the numbers that are divisible by 3
    for n in 0..<arr.count{
        var x = arr[n]
        x = x % 3
        if(x == 0){
            DivByThree.append(arr[n])
        }
    }
    print("These numbers are divisible without remainder by 3 - \(DivByThree)")
}
// the function creates an increasing array of 100 numbers.
func incrArrHundred(){
    var arr:[Int] = []
    var numRow = 1;
    for _ in 0...99{
        arr.append(numRow)
        numRow = numRow+1
    }
    print("An increasing array of 100 numbers - \(arr)")
}

// declaring functions
evenNumbers()
DivWitRemThree()
incrArrHundred()


