class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        mergeAndSort(&nums, 0, nums.count - 1)
        return nums
    }

    func mergeAndSort(_ nums: inout [Int], _ low: Int, _ high: Int) {
        if low >= high {
            return
        }

        var mid = (low + high) / 2

        mergeAndSort(&nums, low, mid)
        mergeAndSort(&nums, mid + 1, high)
        sort(&nums, low, mid, high)
    }

    func sort(_ nums: inout [Int], _ low: Int, _ mid: Int, _ high: Int) {
        var temp: [Int] = []
        var left = low
        var right = mid + 1


        while left <= mid && right <= high {
            if nums[left] <= nums[right] {
                temp.append(nums[left])
                left += 1
            } else {
                temp.append(nums[right])
                right += 1
            }
        }

        while left <= mid {
            temp.append(nums[left])
            left += 1
        }

        while right <= high {
            temp.append(nums[right])
            right += 1
        }

        for i in low...high {
            nums[i] = temp[i - low]
        }
    }
}