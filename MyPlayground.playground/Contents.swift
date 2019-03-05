//: Playground - noun: a place where people can play

import UIKit

//: Переменные и константы
let str1 = "Hello, playground"
var str2: String = "String 2"
var str3 = str1 + ". " + str2
str3 = "asd"


//: Целочисленный тип данных
var i: Int = 3
i = i + 10 * i

//: Тип с плавающей точкой, Double
let pi: Double = 3.1415
var r: Double = 10
var l = 2 * pi * r

//: Булевый тип данных, Bool
var b: Bool = true
b = false

//:------------------
//: Массивы и словари

//: Массивы -
var array: [Int] = [1, 2, 3]
//: Add element to array
array.append(4);
//: remove element from array
var deletedElement = array.remove(at: 0)
array
array[2]
//: Array other type
var arrayStr: [String] = ["a", "b", "c", "d"]

//: Словарь -
//: var dictonary: [Key: Value]
var dictonary: [String: Int] = ["key1":1, "key2": 2]  // Пустой словарь
dictonary["key2"]
dictonary["keyNew"] = 10    // Добавление элемента в словарь
dictonary
dictonary["key2"] = nil     // Удаление элемента из словаря
dictonary


//: Примерная структура данных для приложения ToDo list
var ToDoItems: [[String: String]] = [["Name": "Позвонить", "isConpleted": "No"]]
ToDoItems.append(["Name": "Купить хлеба", "isCompleted": "No"])

//: Любой тип данных
var a: Any = "1"
a = 1
a = 1.1
a = true
var dictonary2: [String: Any] = ["A": 10, "B": 20]

//----------------------
//: Условный оператор if

var modelName: String = "IPhone"
var modelNo: Int = 7
var isLikeApple: Bool = false

if modelName == "IPhone" && isLikeApple {
    print("Interest")
    if modelNo >= 7 {
        print("BUY!!")
    } else {
        print("Model old...")
    }
}
else if modelName == "Android"{
    print("Android")
} else {
    print("Not interest")
}

//:-----------
//: Опционалы подразумевает что может быть не тот типо что указан
//: В данном случае не факт что в "o" будет Int, возможyj  nil
var v: Int = 1
var o: Int? = 56

//v + o Будет ошибка потому что опциональный тип "o" не развернут
//o!	//Говорим что мы уверены что в переменной лежит число, а не nil
		//Если будет все таки nil, то будет ошибка, поэтому разворачивать нужно аккуратно
if o != nil {
    v + o!
} else {
    print("o == nil")
}
if let oUnwraped = o {
    v + oUnwraped
}
 v + (o ?? 0)	// Если в "o" лежит nil, то будет значение по умолчанию "0"

//:------------
//: Цикл for
for i in 0...10{
	print(i)
}

var arr: [Any?]? = [1, 2, 3, 4, 5, 6, nil, 1.0, true, "Haha", 1.42314]
var sum: Double = 0
for i in (arr ?? []) {
	if i is Int {
		sum += Double(i as! Int);
	} else if i is Double{
		sum += i as! Double;
	}
}
print(sum)

//:---------------
//: Функции -  фрагмент програмного кода к которому можно обратится в любом месте программы

func zen(){
	print("Полный дзен...")
}
zen()

func hello(name: String?) -> String?{
	if name != nil{
		return ("Hello, " + name! + "!")
	} else {
		return (nil)
	}
}
var returnValue1 = hello(name: "zen")
var returnValue2 = hello(name: nil)
print(returnValue1)
print(returnValue2)

func lenCirc(radius: Double) -> Double{
	return (2 * 3.1415926 * radius);
}

var len = lenCirc(radius: 10);
print(len)

func ur_sqrt(a: Int, b:Int, c:Int) -> [Double]?{
	let disc = b * b - 4 * a * c;
	if disc >= 0 {
		if disc == 0 {
			return [Double(-b / (2 * a))]
		} else {
			let num1: Double = Double(-b) + sqrt(Double(disc))
			let num2: Double = Double(-b) - sqrt(Double(disc))
			let denum: Double = Double(2 * a)
			return [num1/denum, num2/denum]
		}
	}
	return nil
}
ur_sqrt(a: 10, b: 100, c: 30)
