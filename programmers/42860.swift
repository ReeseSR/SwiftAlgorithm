// MARK: - 탐욕법 (Greedy) 조이스틱

// https://inuplace.tistory.com/1091?category=869907의 코드 참고하였음

import Foundation

func solution(_ name:String) -> Int {
    let name = name.map { $0 }
    let aValue = Int(Character("A").asciiValue!)
    let zValue = Int(Character("Z").asciiValue!)
    
    // 위아래로 움직이는 경우(선택)
    var updown = 0
    var leftright = name.count - 1

    for idx in 0..<name.count {
        updown += min(Int(name[idx].asciiValue!) - aValue, zValue+1 - Int(name[idx].asciiValue!))

        // A가 위치한 가장 마지막 인덱스
        var lastIndex = idx + 1
        while lastIndex < name.count && name[lastIndex] == "A" {
            lastIndex += 1
        }

        // 중간에 A가 반복될 경우 A의 가장 마지막 위치까지 구했다
        // 중간에 A가 많을 경우 돌아서 구하는 것이 더 낫다.
        // 그렇지 않을 경우 원래대로 구하는 편이 낫다
        let movetoFront = idx * 2 + name.count - lastIndex
        let movetoBack = (name.count - lastIndex) * 2 + idx

        leftright = min(leftright, movetoBack)
        leftright = min(leftright, movetoFront)
    }

    return updown + leftright
}