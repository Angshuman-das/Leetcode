class Solution {
    func sortColors(_ nums: inout [Int]) {
        var l = 0, m = 0, r = nums.count - 1

        while m <= r {
            switch nums[m] {
                case 0: 
                   nums.swapAt(l,m)
                   l += 1
                   m += 1 
                case 1: 
                   m += 1
                case 2:
                   nums.swapAt(m, r)
                   r -= 1
                default:
                    break
            }
        }
    }
}