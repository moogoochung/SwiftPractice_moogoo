//: [Previous](@previous)

import Foundation

let age = 10
let hasID = true

if age >= 18 && hasID {
    print("영화 관람 가능합니다.")
} else if !hasID {
    print("신분증이 필요합니다.")
} else if age < 18 {
    print("관람 불가입니다.")
}
