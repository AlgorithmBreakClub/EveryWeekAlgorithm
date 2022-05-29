
//그냥 더하기 string -> Int로 형변환 후 더하고 다시 스트링 변환
class Solution {
    fun addStrings(num1: String, num2: String): String {
        return (num1.toInt()+num2.toInt()).toString()
    }
}