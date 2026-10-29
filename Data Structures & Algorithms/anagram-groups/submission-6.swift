class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [String: [String]] = [:]

        for string in strs {
            let key = String(string.sorted())

            dict[key, default: []].append(string)
        }

        return Array(dict.values)
    }
}
