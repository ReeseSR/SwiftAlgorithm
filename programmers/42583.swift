
// 프로그래머스 - 다리를 지나는 트럭

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var lengths: [Int] = Array(repeating: 0, count: bridge_length)
    var second = 0, idx = 0, totalWeight = 0
    while idx < truck_weights.count {
        totalWeight -= lengths.removeFirst()
        second += 1
        
        if truck_weights[idx] + totalWeight <= weight {
            totalWeight += truck_weights[idx]
            lengths.append(truck_weights[idx])
            
            idx += 1
        } else {
            lengths.append(0)
        }
    }
    return second + bridge_length
}