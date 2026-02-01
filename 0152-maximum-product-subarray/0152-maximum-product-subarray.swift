class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var maxProduct = Int.min, pre = 1, post = 1
        var n = nums.count

        for (i,num) in nums.enumerated() {
            pre = (pre == 0 ? 1 : pre) * num
            post = (post == 0 ? 1 : post) * nums[n - 1 - i]

            maxProduct = max(maxProduct, max(pre, post))
        }

        return maxProduct
    }
}