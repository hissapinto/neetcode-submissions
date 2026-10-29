class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var aux: [[Int]] = Array(repeating: [], count: nums.count + 1)
        var dict: [Int:Int] = [:]

        for n in nums {
            dict[n, default: 0] += 1
        }

        for (key, value) in dict {
            aux[value].append(key)
        }

        var resp: [Int] = []
        for i in (0...nums.count).reversed() {
            if aux[i] != [] {
                resp.append(contentsOf: aux[i])
            }
        }

        return Array(resp.prefix(k))
    }
}
