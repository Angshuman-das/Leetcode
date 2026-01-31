class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0, j = 0, curr = Int.min

        while i < nums.count {
            if nums[i] != curr {
                curr = nums[i]
                nums.swapAt(i, j)
                j += 1
            } 
            
            i += 1
        }

        return j
    }
}