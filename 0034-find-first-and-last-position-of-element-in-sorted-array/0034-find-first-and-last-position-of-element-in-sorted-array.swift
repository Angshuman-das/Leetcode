class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
       [fetchLowerBound(nums,target), fetchUpperBound(nums, target)] 
    }  

    func fetchLowerBound(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, h = nums.count - 1, lb = -1
        
        while l <= h {
            var m = (l + h) / 2

            if nums[m] == target {
                lb = m
                h = m - 1
            } else if nums[m] > target {
                h = m - 1
            } else {
                l = m + 1
            }
        }

        return lb
    }

    func fetchUpperBound(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, h = nums.count - 1, ub = -1

        while l <= h {
            var m = (l + h) / 2

            if nums[m] == target {
               ub = m
               l = m + 1
            } else if nums[m] > target {
                h = m - 1
            } else {
                l = m + 1
            }
        }

        return ub
    }
}