class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, h = nums.count - 1

        while l <= h {
            var m = (l + h) / 2

            if nums[m] == target {
                return m
            } else if nums[m] > target {
                h = m - 1
            } else {
                l = m + 1
            }
        }

        return -1
    }
}