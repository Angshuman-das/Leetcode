class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var subsets: [[Int]] = []
        dfs(0, [], &subsets, nums)
        return subsets
    }

    func dfs(
        _ i: Int,
        _ subseq: [Int],
        _ res: inout [[Int]],
        _ nums: [Int]
    ) {
        guard i < nums.count else {
            res.append(subseq)
            return
        } 
        
        var subseq = subseq

        // left
        subseq.append(nums[i])
        dfs(i + 1, subseq, &res, nums)

        // right
        subseq.removeLast()
        dfs(i + 1, subseq, &res, nums)
    }
}