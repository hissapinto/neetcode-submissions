class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var resp = 0
        var l = 0
        let str = Array(s)
        var set = Set<Character>()

        // Percorre a string
        for r in 0..<str.count {
            while set.contains(str[r]) { //enquanto o char pertence ao set
                set.remove(str[l]) //Remove char à esquerda
                l += 1 //anda a esq
            }

            //Adicionar char no set
            set.insert(str[r])
            resp = max(resp, r - l + 1)
        }

        return resp
    }
}
