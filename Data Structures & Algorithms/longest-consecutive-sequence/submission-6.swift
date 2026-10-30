class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var resp = 0

        for n in nums {
            if !set.contains(n-1) { //começou a sequencia
                var size = 1
                var num = n + 1

                while (set.contains(num)) {
                    num += 1
                    size += 1
                }

                resp = max(resp, size)
            }
        }

        return resp
    }
}
