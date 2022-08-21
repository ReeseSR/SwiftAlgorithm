
// MARK: - 프로그래머스 - 성격 유형 검사하기

import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var personalityDict: [String: Int] = ["R":0,"T":1,"C":2,"F":3,"J":4,"M":5,"A":6,"N":7]
    
    var personality: [String] = ["R","T","C","F","J","M","A","N"]
    
    var scores = [(0,0),(0,0),(0,0),(0,0)]
    
    var result: String = ""
     
    for idx in 0..<survey.count {
        let splited = survey[idx].map { (String($0))}
        // 매우 비동의 ~ 약간 비동의
        if (4 - choices[idx]) > 0 {
            var index = (personalityDict[splited[0]]!) / 2
            var count = (personalityDict[splited[0]]!) % 2
            if count == 0 {
                scores[index].0 += (4 - choices[idx])
            } else {
                scores[index].1 += (4 - choices[idx])
            }
        // 약간 동의 ~ 매우 동의
        } else if (4 - choices[idx]) < 0 {
            var index = (personalityDict[splited[1]]!) / 2
            var count = (personalityDict[splited[1]]!) % 2
            if count == 0 {
                scores[index].0 += -(4 - choices[idx])
            } else {
                scores[index].1 += -(4 - choices[idx])
            }
        }
    }
    
    for idx in 0..<scores.count {
        if scores[idx].0 >= scores[idx].1 {
            result += "\(personality[idx*2])"
        } else {
            result += "\(personality[idx*2+1])"
        }
    }
    
    return result
}