class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var d1: [Character: Int] = [:]
        var d2: [Character: Int] = [:]

        for l in s {
            d1[l, default: 0] += 1
        }

        for l in t {
            d2[l, default: 0] += 1
        }

        return d1 == d2
    }
}
