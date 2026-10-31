class Solution {

    func encode(_ strs: [String]) -> String {
        var resp = ""

        for s in strs {
            let size: Int = s.count
            resp += String(size) + "|" + s
        }

        return resp
    }


    func decode(_ str: String) -> [String] {
        let chars = Array(str)
        var resp: [String] = []
        var index = 0

        while index < chars.count {
            var c = ""

            while index < chars.count - 1 {
                c += String(chars[index])
                if chars[index + 1] == "|" {
                    break
                }
                index += 1
            }

            var actualSize = Int(c) ?? 0
            var string: String = "" 
            index += 1 

            while actualSize > 0 {
                actualSize -= 1
                index += 1
                string += String(chars[index])
            }

            resp.append(string)
            index += 1
        }
        
        return resp
    }
}
