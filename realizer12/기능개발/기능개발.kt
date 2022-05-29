class Solution {
    fun solution(progresses: IntArray, speeds: IntArray): IntArray {
        val workingDayList : MutableList<Int> = arrayListOf()
        for(i in progresses.indices){

            // 일하는 날짜 -> 전체 완성100에서 한분량 빼주고, 스피드 나눠주면 몇일 일해야되는지 나온다.
            //여기서 100이하로 떨어지면, 더일해야 하므로+1해줌.
            var workingDay = (100-progresses[i])/speeds[i]

            if(workingDay*speeds[i]+progresses[i]<100){
                workingDay++
            }

            workingDayList.add(workingDay)
        }


        val answer: MutableList<Int> = arrayListOf()

        var max = workingDayList[0]
        var releaseCount = 1

        for(i in 1 until workingDayList.size){
            if(max < workingDayList[i]){
                answer.add(releaseCount)
                releaseCount = 1
                max = workingDayList[i]
            }else{
                releaseCount ++
            }
        }
        answer.add(releaseCount)


        return answer.toIntArray()
    }
}