class Solution {
    fun solution(name: String): Int {
        var answer = 0
        var min = name.length - 1

        for(i in name.indices){

            //각 끝 a,z기준으로  체크해서  가장 작은 값  ansnwer에 더해줌.
            answer += (name[i] - 'A').coerceAtMost('Z' - name[i] + 1)
            var nextIndex = i + 1
            while (nextIndex < name.length && name[nextIndex] == 'A')
                nextIndex++
            min = min.coerceAtMost(i * 2 + name.length - nextIndex)
        }
        return answer + min
    }
}