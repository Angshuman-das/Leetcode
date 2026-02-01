class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
        var l = 1, h = x / 2

        while l <= h {
            var m = l + (h - l) / 2

            if m <= x / m {
               l = m + 1
            } else {
                h = m - 1
            } 
        }

        return h
    }
}