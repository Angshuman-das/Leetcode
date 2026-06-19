class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
         if n == 0 {
            return 1.0
        }

        var x: Double = x, n: Int = n

        if n < 1 {
            return 1 / myPow(x, -n)
        }

        if (n % 2) == 0 {
            x = myPow(x * x, n / 2)
        } else {
            x = x * myPow(x, n - 1)
        }


        return x
    }
}

/*
x = 2   
n = 5


-> base case
if n = 1 {
    return x
}

n % 2 == 0 {
    x = myPow(x^2, n/2)
} else {
    x = x * myPow(x, n-1) // 2 * 2^4
}

return x
*/