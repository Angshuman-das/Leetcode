class Solution {
    func mySqrt(_ x: Int) -> Int {
        var l = 1, h = x, sqrt = 0

        while l <= h {
            var m = (l + h) / 2

            if (m*m) == x {
                return m
            } else if (m * m) > x {
                h = m - 1
            } else {
                sqrt = m
                l = m + 1
            }
        }

        return sqrt
    }
}