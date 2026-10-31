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
        let chars = Array(str) //Transformar em array para percorrer
        var resp: [String] = []
        var i = 0

        while i < chars.count {
            var j = i

            //Verifica quantidade de dígitos do número
            while chars[j] != "|" {
                j += 1
            }

            // tam
            let lenNumStr = String(chars[i..<j])
            let lenNum = Int(lenNumStr) ?? 0 
            
            i = j + 1
            let subStr = String(chars[i..<i + lenNum])

            resp.append(subStr)
            i += lenNum
        }
        
        return resp
    }
}
