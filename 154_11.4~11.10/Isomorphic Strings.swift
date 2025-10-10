class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var toHash = [Character: Character]()
        var fromHash = [Character: Character]()
        var s = Array(s)
        var t = Array(t)

        for i in 0..<s.count {
            let c1 = s[i], c2 = t[i]
            if (toHash[c1] != nil && toHash[c1] != c2) || (fromHash[c2] != nil && fromHash[c2] != c1) {
                return false
            }
            toHash[c1] = c2
            fromHash[c2] = c1
        }
        return true
    }
}
