//: Playground - noun: a place where people can play

import UIKit

//:-----------
//: Протоколы
//: Протокол это набор правил, которым должен соответвовать класс поддерживающий этот протокол

protocol Shape {
	var name: String {get set}
	
	func length() -> Double
	func area() -> Double
}

class Point: Shape {
	var name: String = "Point"
	
	var x: Int = 0
	var y: Int = 0
	
	func length() -> Double {
		return 0.0
	}
	func area() -> Double {
		return 0.0
	}
}

class Line: Shape {
	var name: String = "Line"
	
	var x1: Point = Point()
	var x2: Point = Point()
	func length() -> Double {
		return 0.0
	}
	func area() -> Double {
		return 0.0
	}
}
