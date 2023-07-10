func solution(_ n:Int) -> Int {
     var save: [Int: Int] = [:]
    save[0] = 0
    save[1] = 1
    save[2] = 2
    
    func d(_ n: Int) -> Int {
        if save.keys.contains(n) {
            return save[n]!
        }
        save[n] = (d(n-2) + d(n-1)) % 1234567
        return save[n]!
    }
    let result = d(n)
    
    return result
}
