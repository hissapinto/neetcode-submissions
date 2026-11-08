class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1

        while l <= r {
            let mid = (r - l)/2 + l

            if nums[mid] == target {return mid}
            else if l == r {return -1}

            else if nums[mid] < target {
                l = mid + 1
            } else {
                r = mid
            }
        }

        return -1
    }
}
