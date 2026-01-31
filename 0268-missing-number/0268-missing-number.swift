class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var missingNum = 0

        for num in nums {
            missingNum ^= num
        }

        for i in 0...nums.count {
            missingNum ^= i
        }

        return missingNum
    }
}