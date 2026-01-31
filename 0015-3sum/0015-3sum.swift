class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = []
        var nums = nums.sorted()

        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }

            var j = i + 1, k = nums.count - 1

            while j < k {
                var sum = nums[i] + nums[j] + nums[k]

                if sum == 0 {
                    res.append([nums[i], nums[j], nums[k]])
                    j += 1
                    k -= 1

                    while j < k && nums[j] == nums[j - 1] {
                        j += 1
                    }

                    while j < k && nums[k] == nums[k + 1] {
                        k -= 1
                    }
                } else if sum > 0 {
                    k -= 1
                } else {
                    j += 1
                }
            }
        }

        return res
    }
}