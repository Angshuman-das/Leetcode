class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var n = matrix.count 

        for i in 0..<(n - 1) {
            for j in (i + 1)..<n {
                matrix.swapAtElements(i, j)
            }
        }

        for i in 0..<matrix.count {
            matrix[i].reverse()
        }
    }
}

extension Array where Element == [Int] {
    mutating func swapAtElements(_ i: Int, _ j: Int) {
        let temp = self[i][j]
        self[i][j] = self[j][i]
        self[j][i] = temp
    }
}