class Solution {
    func maxScore(_ cardPoints: [Int], _ k: Int) -> Int {
        var maxPoint = Int.min, sum = 0

        for i in 0..<k {
            sum += cardPoints[i]
        }
    
        maxPoint = max(maxPoint, sum)
        var i = 0, x = k - 1

        while x >= 0 {
            if i > 0 {
                i -= 1
            } else {
                i = cardPoints.count - 1
            }

            sum += cardPoints[i]
            sum -= cardPoints[x]
            maxPoint = max(maxPoint, sum)

            x -= 1
        }

        return maxPoint
    }
}