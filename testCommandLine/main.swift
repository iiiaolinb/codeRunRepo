//
//  main.swift
//  testCommandLine
//
//  Created by Egor Hudyaev on 28.06.2024.
//

import Foundation

func yandexCodeRun() -> String {
	let charCount = Int(readLine() ?? " ")
	let charString = readLine()
	var charArray = [String]()
	let intString = readLine()
	var timeArray = [Int]()
	
	if let charString = charString {
		for int in charString {
			charArray.append(String(int))
		}
	}
	
	if let intString = intString {
		for int in intString.split(separator: " ") {
			timeArray.append(Int(int)!)
		}
	}
	
	for i in 1..<timeArray.count {
		timeArray[timeArray.count - i] = timeArray[timeArray.count - i] - timeArray[timeArray.count - i - 1]
	}
	
	let max = timeArray.max()
	
	var index = 0
	for (key, item) in timeArray.reversed().enumerated() {
		if item == max {
			index = timeArray.count - key - 1
			break
		}
	}
	
	return charArray[index]
}

let x = yandexCodeRun()

print(x)

