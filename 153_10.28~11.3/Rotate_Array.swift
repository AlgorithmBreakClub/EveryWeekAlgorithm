import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var lookup: [Character: Int] = [:]

        for x in magazine {
            lookup[x] = (lookup[x] ?? 0) + 1
        }

        for x in ransomNote {
            lookup[x] = (lookup[x] ?? 0) - 1
        }

        if (lookup.values.min()! as Int >= 0) {
            return true
        }

        return false
    }
}
