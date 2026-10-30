class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var l = 0
        var r = s.count - 1
        let string = Array(s)

        while (l < r) {
            while l < r && !string[l].isLetter && !string[l].isNumber { l += 1 }
            while l < r && !string[r].isLetter && !string[r].isNumber { r -= 1 }

            if string[l].lowercased() != string[r].lowercased() {
                return false
            }

            l += 1
            r -= 1
        }

        return true
    }
}
