//: [Previous](@previous)

import Foundation

let age = 6
let hasStudentID = true

if !hasStudentID {
    if age >= 65 || age <= 7 {
        print("30% 할인 대상")
    } else {
        print("할인 대상이 아닙니다.")
    }
} else {
    if age >= 65 || age <= 7 {
        print("30% 할인 대상")
    } else {
        print("20% 할인 대상")
    }
}
