class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return nums[0]
        }
        var l = 0, h = nums.count - 1

        if nums[l] != nums[l + 1] {
            return nums[l]
        }

        if nums[h] != nums[h - 1] {
            return nums[h]
        }

        while l <= h {
            var m = (l + h) / 2

            if nums[m - 1] != nums[m] && nums[m] != nums[m + 1] {
                return nums[m]
            }

            if nums[m] == nums[m - 1] {
                if (m - l + 1) % 2 == 0 {
                    l = m + 1
                } else {
                    h = m - 2
                }
            } else {
                if (h - m + 1) % 2 == 0 {
                    h = m - 1
                } else {
                    l = m + 2
                }
            }
        }

        return -1
    }
}