class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var res: [Int] = Array(repeating: 0, count: nums.count)
        var i = 0, j = 1

        for num in nums {
            if num >= 0 {
                res[i] = num
                i += 2
            } else {
                res[j] = num
                j += 2
            }
        }


        return res
    }
}