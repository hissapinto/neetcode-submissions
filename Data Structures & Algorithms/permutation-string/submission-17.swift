class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        if s2.count < s1.count {return false}

        var ds1 = [Character:Int]()
        var ds2 = [Character:Int]()
        let str1 = Array(s1)
        let str2 = Array(s2)
        
        for i in 0..<str1.count {
            ds1[str1[i], default: 0] += 1
            ds2[str2[i], default: 0] += 1
        }

        var l = 0
        for r in s1.count..<str2.count {
            if ds1 == ds2 {return true}

            if ds2[str2[l]]! > 1 { 
                ds2[str2[l]]! -= 1
            } else {
                ds2[str2[l]] = nil
            }
            l += 1

            ds2[str2[r], default: 0] += 1
        }

        return ds1 == ds2
    }
}
