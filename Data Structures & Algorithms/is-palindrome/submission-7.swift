class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var l = 0
        var r = s.count - 1
        let string = Array(s)

        while l < r {
            while l < r && isAlphaNum(string[l]) { l += 1 }
            while l < r && isAlphaNum(string[r]) { r -= 1 }

            if string[l].lowercased() != string[r].lowercased() {
                return false
            }

            l += 1
            r -= 1
        }

        return true
    }

    private func isAlphaNum(_ c: Character) -> Bool {
        return !c.isLetter && !c.isNumber
    }
}
