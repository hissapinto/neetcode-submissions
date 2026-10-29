class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix: [Int] = Array(repeating: 1, count: nums.count)
        var suffix: [Int] = Array(repeating: 1, count: nums.count)
        var resp: [Int] = Array(repeating: 0, count: nums.count)

        for i in 1..<nums.count {
            prefix[i] = prefix[i-1] * nums[i-1]
        }

        for i in (0...nums.count-2).reversed() {
            suffix[i] = suffix[i+1] * nums[i+1]
        }

        for i in 0..<nums.count {
            resp[i] = prefix[i] * suffix[i]
        }

        return resp
    }
}
