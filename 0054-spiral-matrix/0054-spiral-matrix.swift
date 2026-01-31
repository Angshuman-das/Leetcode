class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.isEmpty || matrix[0].isEmpty {
            return []
        }

        var res: [Int] = []
        var left = 0, right = matrix[0].count - 1
        var top = 0, bottom = matrix.count - 1

        while left <= right && top <= bottom {
            for i in left...right {
                res.append(matrix[top][i])
            }
            top += 1

            if top <= bottom {
                for i in top...bottom {
                    res.append(matrix[i][right])
                }
                right -= 1
            }

            if top <= bottom {
                for i in stride(from: right, through: left, by: -1) {
                    res.append(matrix[bottom][i])
                }
                bottom -= 1
            }

            if left <= right {
                for i in stride(from: bottom, through: top, by: -1) {
                    res.append(matrix[i][left])
                }
                left += 1
            }
        }

        return res
    }
}