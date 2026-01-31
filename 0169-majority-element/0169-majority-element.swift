class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majorityElemnt = Int.min, vote = 0

        for num in nums {
            if vote == 0 {
                majorityElemnt = num
                vote += 1
            } else if num == majorityElemnt {
                vote += 1
            } else {
                vote -= 1
            }
        }

        var count = 0

        for num in nums {
            if num == majorityElemnt {
                count += 1
            }
        }

        return (count > nums.count / 2) ? majorityElemnt : -1
    }
}