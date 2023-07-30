func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    if cacheSize == 0 {
        return 5*cities.count
    }

    var time = 0
    var cache: [String] = []

    for city in cities {
        if let i = cache.index(of: city.lowercased()) {
            cache.remove(at: i)
            time += 1
        } else {
            if (cache.count >= cacheSize) {
                cache.remove(at: 0)
            }

            time += 5
        }

        cache += [city.lowercased()]
    }

    return time
}
