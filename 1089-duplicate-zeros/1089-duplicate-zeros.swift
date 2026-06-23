class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var j = 0, i = 0

       while i < arr.count {
          if arr[i] == 0 {
            arr.insert(0, at: j)
            i += 2
            j += 2
            arr.removeLast()
          } else {
            i += 1
            j += 1
          }
       }
    }
}

/*
[0,1,2,0,0,4,5,6,7,8]

[0,0,1,2,0,0,0,0,4,5]
*/