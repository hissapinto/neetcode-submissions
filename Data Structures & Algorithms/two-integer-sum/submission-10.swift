class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]

        for (i, n) in nums.enumerated() {
            if let complement = dict[target - n], complement != i {
                return [complement, i]
            }
            dict[n] = i //chave = num, valor = indice
        }
        return []
    }
}
