class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0, j = 0 

        while i < nums.count {
            if nums[i] != 0 {
               nums.swapAt(i, j)
               j += 1
            } 
            
            i += 1
        } 
    }
}