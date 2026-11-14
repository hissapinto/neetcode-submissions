class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        // valor máximo de injestão de bananas necessário = maior pilha
        var l = 1, r = piles.max()!
        var resp = r

        // Fazer busca binária entre as opções (1 - maior num piles)
        while l <= r {
            // meio = qtd injestão
            let k = (l + r)/2
            
            // Soma as horas necessárias para k
            var hour = 0
            for b in piles {
                hour += (b + k - 1) / k // b/k forçando arredondar pra cima
            }

            // se hour < h -> testa substituir o resp e procura um k menor (+ otimizado)
            if hour <= h {
                resp = min(resp, k)
                r = k - 1
            } // se hour passa de h -> procura um k que caiba
            else {
                l = k + 1
            }
        }

        return resp
    }
}

