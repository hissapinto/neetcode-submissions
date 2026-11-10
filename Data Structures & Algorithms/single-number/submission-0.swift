class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>()

        for n in nums {
            if set.contains(n) {
                set.remove(n)
            } else {
                set.insert(n)
            }
        }

        return set.first ?? -1
    }
}