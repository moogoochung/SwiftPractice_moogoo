import UIKit
//조건문 문제 0번
let temp = 30

if temp > 28 {
    print("에어컨 켜기")
} else {
    print("선풍기만 켜기")
}

//조건문 문제 1번

let age = 18

if age >= 20 {
    print("성인입니다.")
} else {
    print("미성년자입니다.")
}

//조건문 문제 2번

var score = 95

if score >= 90 {
    print("A 학점입니다.")
} else if score >= 80 {
    print("B 학점입니다.")
} else if score >= 70 {
    print("C 학점입니다.")
} else {
    print("F 학점입니다.")
}

//조건문 문제 3번

let num = 11

if num % 2 == 0 {
    print(num, "은 짝수입니다.")
} else {
    print(num, "홀수입니다.")
}

//조건문 문제 4번

let year = 2025

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
    print(year, "년은 윤년입니다.")
} else {
    print(year, "년은 평년입니다.")
}

//조건문 문제 5번

let name = "무구"
let userAge = 17

if userAge > 19 {
    print(name, "는 성인입니다.")
}

if userAge >= 13 && userAge <= 19 {
    print(name, "은 청소년입니다.")
} else {
    print(name, "어린이입니다.")
}

if userAge < 13 {
    print(name, "은 어린이입니다.")
} else if userAge <= 19 {
    print(name, "은 청소년입니다.")
} else {
    print(name, "는 성인입니다.")
}

