class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var dict = [Character:Int]()
        var str = Array(s)
        var l = 0, qtdChar = 0
        var resp = 0

        for r in 0..<str.count {
            // Incrementa o valor do char atual
            dict[str[r], default: 0] += 1
            qtdChar = max(qtdChar, dict[str[r]]!)
            
            // Achar o char predominante da substring
            // for (key, value) in dict {
            //     if value > qtdChar {
            //         qtdChar = value
            //     }
            // }

            // Verificar se tem < k chars diferentes do predominante
            // se sim, mexe o l para a substring ficar válida
            while (r - l + 1 - qtdChar > k) {
                dict[str[l], default: 0] -= 1
                l += 1
            }
            
            let sum = r - l + 1
            resp = max(resp, sum)
        }

        return resp
    }
}