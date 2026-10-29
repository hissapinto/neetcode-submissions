class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]

        for i in 0..<nums.count {
            if let complement = dict[target - nums[i]], complement != i {
                return [complement, i]
            }
            dict[nums[i]] = i //chave = num, valor = indice
        }
        return []
    }
}
