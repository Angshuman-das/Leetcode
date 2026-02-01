class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet: Set<Int> = Set(nums)
        var longest = 0

        for num in numSet {
            var x = num, count = 0
            if !numSet.contains(x + 1) {
                while numSet.contains(x) {
                    count += 1
                    x -= 1
                }

                longest = max(longest, count)
            } 
        }

        return longest
    }
}