class Solution {
    func nAndm1(_ num1: Int, _ num2: Int) -> [String] {
        var array1:[Int] = []
        var array2:[String] = []
        var visitedChecker:[Bool] = []
        
        for i in 1...num1 {
            array1.append(i)
            visitedChecker.append(false)
        }
        
        
        
        func permute(_ currentPermute:[Int]) {
            if currentPermute.count == num2 {
                let string = makeString(currentPermute)
                array2.append(string)
            }
            for i in 0..<num1 {
                if visitedChecker[i] == false {
                    visitedChecker[i] = true
                    permute(currentPermute + [array1[i]])
                    visitedChecker[i] = false
                }
            }
        }
        
        func makeString(_ nums:[Int]) -> String {
            var rtn = ""
            for i in nums {
                if rtn.isEmpty {
                    rtn = "\(i)"
                }
                else {
                    rtn += " \(i)"
                }
            }
            
            return rtn
        }
        
        permute([])
        
        return array2
    }
}
