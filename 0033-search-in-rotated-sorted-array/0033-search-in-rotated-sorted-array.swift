class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, h = nums.count - 1

        while l <= h {
            var m = (l + h) / 2

            if nums[m] == target {
                return m
            }


            if nums[l] <= nums[m] {
                if nums[l] <= target && target < nums[m] {
                    h = m - 1
                } else {
                    l = m + 1
                }
            } else {
                if nums[m + 1] <= target && target <= nums[h] {
                    l = m + 1
                } else {
                    h = m - 1
                }
            }
        }  

        return -1
    }
}
