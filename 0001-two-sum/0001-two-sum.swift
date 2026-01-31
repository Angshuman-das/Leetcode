class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numsDict: [Int: Int] = [:]

        for (i,num) in nums.enumerated() {
            if let index = numsDict[target - num] {
                return [index, i]
            } else {
                numsDict[num] = i
            }
        }

        return [-1,-1]
    }
}