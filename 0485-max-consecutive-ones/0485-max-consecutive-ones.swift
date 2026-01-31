class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0, maxCount = 0

        for num in nums {
            if num == 1 {
                count += 1
            } else {
                count = 0 
            }

            maxCount = max(maxCount, count)
        }

        return maxCount
    }
}