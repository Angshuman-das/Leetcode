class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var res: [[Int]] = []
        var nums = nums.sorted()

        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i - 1] { continue }

            for j in (i + 1)..<nums.count {
                if j > (i + 1) && nums[j] == nums[j - 1] { continue }

                var k = j + 1, q = nums.count - 1

                while k < q {
                    var sum = nums[i] + nums[j] + nums[k] + nums[q]

                    if sum == target {
                        res.append([nums[i], nums[j], nums[k], nums[q]])
                        k += 1
                        q -= 1

                        while k < q && nums[k] == nums[k - 1] { k += 1 }
                        while k < q && nums[q] == nums[q + 1] { q -= 1 }
                    } else if sum > target {
                        q -= 1
                    } else {
                        k += 1
                    }
                }
            }
        }

        return res
    }
}