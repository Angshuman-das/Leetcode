class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var l = 0, h = 0, maxLength = 0, zeroes = 0

        while h < nums.count {
            if nums[h] == 0 {
                zeroes += 1
            }

            if zeroes > k {
                if (nums[l] == 0) { zeroes -= 1 }
                l += 1
            } else {
                maxLength = max(maxLength, h - l + 1)
            }

            h += 1
        }

        return maxLength
    }
}