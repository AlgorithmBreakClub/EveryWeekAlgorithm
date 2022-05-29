//answer[i] == "FizzBuzz" if i is divisible by 3 and 5. -> 3과 5의 공배수
//answer[i] == "Fizz" if i is divisible by 3. -> 3의 배수
//answer[i] == "Buzz" if i is divisible by 5. -> 5의 배수

//참고 url
//https://leetcode.com/problems/fizz-buzz/
    class Solution {
        fun fizzBuzz(n: Int): List<String> {
            return mutableListOf<String>().apply {
               for(i in 1..n){
                   if(i%5==0 && i%3 ==0)   {//3과 5의 공배수
                       this.add("FizzBuzz")
                   }else if(i%3 == 0){// 3의 배수일때
                       this.add("Fizz")
                   }else if(i%5 == 0){//5의 배수일때
                       this.add("Buzz")
                   }else{
                       this.add(i.toString())
                   }
               }
           }
        }
    }