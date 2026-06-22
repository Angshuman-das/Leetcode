class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result: [String] = []
        var l = n, r = n
        resolve(l, r, &result, "")
        return result
    }

    func resolve(_ l: Int, _ r: Int, _ result: inout [String], _ str: String) {
        guard l <= r else {
            return
        }

        if (l == 0 && r == 0) {
            result.append(str)
            return
        }

        var str = str
    
        //left 
        if l > 0 {
            let leftStr = str + "("
            resolve(l - 1, r, &result, leftStr )
        }

        // right
        if r > 0 {
            let rightStr = str + ")"
            resolve(l, r - 1, &result, rightStr )
        }
    }
}