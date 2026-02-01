class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var str = Array(s), maxLength = 0
        var strSet: Set<Character> = []

        var i = 0, j = 0

        while i < str.count {
            var currChar = str[i]

            while strSet.contains(currChar) {
                strSet.remove(str[j])
                j += 1
            }

            strSet.insert(currChar)

            maxLength = max(i - j + 1, maxLength)
            i += 1
        }
        
        return maxLength
    }
}