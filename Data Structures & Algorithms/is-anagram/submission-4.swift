class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var d1: [Character: Int] = [:]
        var d2: [Character: Int] = [:]

        for (c1,c2) in zip(s,t) {
            d1[c1, default: 0] += 1
            d2[c2, default: 0] += 1
        }

        return d1 == d2
    }
}
