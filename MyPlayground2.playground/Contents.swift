//: Playground - noun: a place where people can play

import UIKit

//:----------------------
//: Структуры ООП в Swift
//: Структуры при присваивании копируются и создается новый экземпляр
struct s_Point{
	var x: Int
	var y: Int
}

struct s_Line{
	var p1: s_Point
	var p2: s_Point
	
	func length() -> Double {
		let p_1: Double = Double((p1.x - p2.x) * (p1.x - p2.x))
		let p_2: Double = Double((p1.y - p2.y) * (p1.y - p2.y))
		return sqrt(p_1 + p_2)
	}
}

//:-------
//: Классы
//: Можно задавать несколько конструкторов, которые принимают различные параметры
//: Классы  это ссылочный тип при p1 = p2 они будут содержать один и тот же объект
class Point{
	var x: Double = 0
	var y: Double = 0
	
	init() {
		self.x = 0;
		self.y = 0;
	}

	init(x: Double, y: Double) {
		self.x = x;
		self.y = y;
	}
}
var p = Point(x: 10, y: 20)

class Line{
	var p1: Point
	var p2: Point
	
	init(p1: Point, p2: Point){
		self.p1 = p1
		self.p2 = p2
	}
}

var l = Line(p1: Point(x: 10, y: 20), p2: Point(x: 10, y: 40))
