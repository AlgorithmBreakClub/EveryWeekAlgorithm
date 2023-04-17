import Foundation

func solution(
    _ players:[String],
    _ callings:[String]
) -> [String] {

    var indexTable: [String: Int] = [:]
    var rankingTable: [String] = players
    for (index, player) in players.enumerated() {
        indexTable[player] = index
    }
    for calling in callings {
        let index = indexTable[calling]!
        let frontPlayer = rankingTable[index-1]

        rankingTable.swapAt(index, index-1)
        indexTable[calling] = index-1
        indexTable[frontPlayer] = index
    }

    return rankingTable
}
