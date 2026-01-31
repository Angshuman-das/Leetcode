class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
       var k = k % nums.count, n = nums.count

        reverse(&nums, 0, n - k - 1)
        reverse(&nums, n - k, n - 1)
        reverse(&nums, 0, n - 1)
    }

    func reverse(_ nums: inout [Int], _ l: Int, _ h: Int) {
        var l = l, h = h

        while l < h {
            nums[l] = nums[l] ^ nums[h]
            nums[h] = nums[l] ^ nums[h]
            nums[l] = nums[l] ^ nums[h]

            l += 1
            h -= 1
        }
    }
}