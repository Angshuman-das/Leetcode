class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var str = Array(s), maxLength = 0, length = 0
        var strSet: Set<Character> = []

        var i = 0, j = 0

        while i < str.count {
            var currChar = str[i]
            if strSet.contains(currChar) {
                while strSet.contains(currChar) {
                    strSet.remove(str[j])
                    j += 1
                }
               
               strSet.insert(currChar)
               length = (i - j + 1) 
            } else {
                length += 1
                strSet.insert(currChar)
            }

            maxLength = max(length, maxLength)
            i += 1
        }
        
        return maxLength
    }
}