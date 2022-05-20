class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var strings = [String]()
        for i in 0..<n {
            var returnString = ""
            if (i+1)%3 == 0 {
                returnString += "Fizz"
            }
            
            if (i+1)%5 == 0 {
                returnString += "Buzz"
            }
            
            if returnString.isEmpty {
                returnString = "\(i+1)"
            }
            
            strings.append(returnString)
        }
        
        return strings
    }
}
