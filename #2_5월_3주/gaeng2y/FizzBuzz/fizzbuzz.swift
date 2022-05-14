class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var res = [String]()
        for i in 1 ... n {
            let str = i % 5 == 0 ? (i % 3 == 0 ? "FizzBuzz" : "Buzz") : (i % 3 == 0 ? "Fizz" : "\(i)")
            res.append(str)
        }
        return res
    }
}
