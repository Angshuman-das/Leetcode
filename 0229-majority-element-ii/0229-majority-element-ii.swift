class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var majElmI = Int.min, majElmII = Int.min, res: [Int] = []
        var voteI = 0, voteII = 0

        for num in nums {
            if voteI == 0, majElmII != num {
                majElmI = num
                voteI += 1
            } else if voteII == 0, majElmI != num {
                majElmII = num
                voteII += 1
            } else if majElmI == num {
                voteI += 1
            } else if majElmII == num {
                voteII += 1
            } else {
                voteI -= 1
                voteII -= 1
            }
        }

        var countI = 0, countII = 0

        for num in nums {
            if majElmI == num { countI += 1 }
            if majElmII == num { countII += 1 }
        }

        if countI > nums.count / 3 {
            res.append(majElmI)
        } 

        if countII > nums.count / 3 {
            res.append(majElmII)
        }

        return res
    }
}