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
        var index = 0

        while index < chars.count {
            var c = ""

            //Verifica quantidade de dígitos do número
            while index < chars.count - 1 {
                c += String(chars[index])
                if chars[index + 1] == "|" {
                    break
                }
                index += 1
            }

            var actualSize = Int(c) ?? 0
            var string: String = "" 
            index += 1 //anda um para passar o último dígito

            //Enquanto nao zera o tamanho da palavra
            while actualSize > 0 {
                actualSize -= 1 //Diminui o tamanho
                index += 1 //Anda para pular o |
                string += String(chars[index]) //Acrescenta o char na string
            }

            resp.append(string) //add o array de resps
            index += 1 //Pula o último char
        }
        
        return resp
    }
}
