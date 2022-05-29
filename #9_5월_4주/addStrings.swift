class Solution {
    static func addStrings(_ num1: String, _ num2: String) -> String {
        
        var num1Array = Array(num1)
        var num2Array = Array(num2)
        
        var carry = 0
        var rtnString = ""
        
        while !num1Array.isEmpty && !num2Array.isEmpty {
            let num1Last = num1Array.removeLast()
            let num2Last = num2Array.removeLast()
            
            guard let num1Int = num1Last.wholeNumberValue else { return rtnString }
            guard let num2Int = num2Last.wholeNumberValue else { return rtnString }
            
            var resultNum = num1Int + num2Int + carry
            
            if resultNum >= 10 {
                carry = 1
                resultNum -= 10
            }
            else {
                carry = 0
            }
            
            rtnString = "\(resultNum)" + rtnString
        }
        
        var lastArray = num1Array
        
        if num1Array.isEmpty {
            lastArray = num2Array
        }
        else if num2Array.isEmpty {
            
        }
        else {
            if carry == 1 {
                rtnString = "1" + rtnString
            }
            
            return rtnString
        }
        
        if carry != 0 {
            while carry != 0 && !lastArray.isEmpty {
                let numLast = lastArray.removeLast()
                guard let numInt = numLast.wholeNumberValue else { return rtnString }
                var resultNum = numInt + carry
                if resultNum >= 10 {
                    carry = 1
                    resultNum -= 10
                }
                else {
                    carry = 0
                }
                
                rtnString = "\(resultNum)" + rtnString
            }
        }
        
        if !lastArray.isEmpty {
            let frontString = String(lastArray)
            rtnString = frontString + rtnString
        }
        
        if carry == 1 {
            rtnString = "1" + rtnString
        }
        
        return rtnString
    }
}
