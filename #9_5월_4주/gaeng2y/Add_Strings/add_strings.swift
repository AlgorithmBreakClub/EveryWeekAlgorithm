class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var res = ""
        var num1 = num1
        var num2 = num2
        var carry = 0
        
        while !num1.isEmpty || !num2.isEmpty {
            var n1 = 0
            var n2 = 0
            if !num1.isEmpty {
                n1 = num1.removeLast().wholeNumberValue!
            }
            if !num2.isEmpty {
                n2 = num2.removeLast().wholeNumberValue!
            }
            let n = n1 + n2 + carry
            carry = n / 10
            res = String(n%10) + res
        }
        
        if carry == 1 {
            res = "1" + res
        }
        
        return res
    }
}
