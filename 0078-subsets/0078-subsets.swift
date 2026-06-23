class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        // left
        findSubsets(nums, [nums[0]], &result, 1)

        // right
        findSubsets(nums, [], &result, 1)

        return result
    }

    func findSubsets(_ nums: [Int], _ subset: [Int], _ result: inout [[Int]], _ i: Int) {
        guard i <= (nums.count - 1) else {
            result.append(subset)
            return
        }

        // left
        var leftSubset = subset
        leftSubset.append(nums[i])
        findSubsets(nums, leftSubset, &result, i + 1)

        // right
        findSubsets(nums, subset, &result, i + 1)
    }
}