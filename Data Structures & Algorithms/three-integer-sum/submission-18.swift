class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var resp: [[Int]] = []
        let nums = nums.sorted()

        for i in 0..<nums.count {
            if i > 0 && nums[i-1] == nums[i] {
                continue
            }

            var l = i + 1
            var r = nums.count - 1

            while (l < r) {
                let sum = nums[i] + nums[l] + nums[r]

                if sum == 0 {
                    resp.append([nums[i], nums[l], nums[r]])
                    l += 1
                    r -= 1
                    while l < r && nums[l] == nums[l-1] {
                        l += 1
                    }
                } else if sum > 0 {
                    r -= 1
                } else {
                    l += 1
                }
            }
        }

        return resp
    }
}