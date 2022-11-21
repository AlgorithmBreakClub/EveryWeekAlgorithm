/*
    캐시 (https://school.programmers.co.kr/learn/courses/30/lessons/17680?language=javascript)
    2022-11-21
    @j0dev
*/
const solution = (cacheSize, cities) => {
    
    if (cacheSize == 0) {
        return cities.length * 5
    }
    
    let excTime = 0
    let cache = []
    
    cities.map((item) => {
        let city = item.toLowerCase()
        let isCache = cache.find((item) => item === city)
        if (isCache) {
            cache = cache.filter((item) => item !== city)
            cache.push(city)
            excTime++
        } else {
            cache.push(city)
            if (cache.length > cacheSize) {
                cache.shift()
            }
            excTime += 5
        }
    })

    return excTime;
}