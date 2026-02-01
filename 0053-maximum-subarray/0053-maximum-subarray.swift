class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = Int.min, sum = 0

        for num in nums {
            if sum < 0 { sum = 0 }
            
            sum += num 
            maxSum = max(maxSum, sum)
        }

        return maxSum
    }
}