class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0, sumDict: [Int: Int] = [0:1], sum = 0

        for num in nums {
            sum += num
            
            var rem = sum - k
            if let frq = sumDict[rem] {
                count += frq
            }

            sumDict[sum, default: 0] += 1
        } 

        return count
    }
}