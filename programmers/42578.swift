// MARK: - 프로그래머스(해시) - 위장

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    // [옷 종류: 종류별 개수]
    var clothesDict: [String: Int] = [:]
    for cloth in clothes {
        
        var key = cloth[1]
        
        if !clothesDict.keys.contains(key) {
            clothesDict[key] = 1
        } else {
            clothesDict[key]! += 1
        }
    }
    
    var count: Int = 1
    
    for value in clothesDict.values {
        count *= (value + 1)
    }
    
    return count - 1
}