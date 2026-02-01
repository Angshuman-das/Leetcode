class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var mini = Int.max
        var l = 0, h = nums.count - 1

        while l <= h {
            var m = (l + h) / 2

            if nums[l] <= nums[m] {
                mini = min(mini, nums[l])
                l = m + 1
            } else {
                mini = min(mini, nums[m])
                h = m - 1
            }
        }

        return mini
    }
}