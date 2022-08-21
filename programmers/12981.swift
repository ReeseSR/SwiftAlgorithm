

// MARK: - 프로그래머스 - 영어 단어 끝말잇기

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var wordsDict : [String: Int] = [:]
    
    wordsDict.updateValue(1, forKey: words[0])
    
    
    for idx in 1..<words.count {
        
        // 이미 나온 단어고
        // 앞 단어의 마지막 단어와 같지 않다면
        if wordsDict[words[idx]] == 1 || words[idx-1].last != words[idx].first {
            return [idx%n + 1 , idx/n + 1]
        }
        wordsDict.updateValue(1, forKey: words[idx])
        
    }
    
    return [0,0]
}