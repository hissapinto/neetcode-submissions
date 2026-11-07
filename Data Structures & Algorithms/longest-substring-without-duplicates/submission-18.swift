class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var resp = 0
        var l = 0
        let str = Array(s)
        var set = Set<Character>()
        
        // abcdecab
        // zxyzxyz

        for r in 0..<str.count {
            while set.contains(str[r]) {
                set.remove(str[l])
                l += 1
            }

            set.insert(str[r])
            resp = max(resp, r - l + 1)
        }

        return resp
    }
}
