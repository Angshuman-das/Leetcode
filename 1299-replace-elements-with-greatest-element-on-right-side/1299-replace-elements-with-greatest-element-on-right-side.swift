class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var res: [Int] = Array(repeating: 0, count: arr.count), currMax = -1

        for i in stride(from: arr.count - 1, through: 0, by: -1) {
            res[i] = currMax
            currMax = max(currMax, arr[i])
        }

        return res
    }
}