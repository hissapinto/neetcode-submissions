class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var g = grid
        let lins = g.count
        let cols = g[0].count

        var fila: [[Int]] = [] // lista de posiçoes [[1,2], [2,3]]
        var fresh = 0

        // Achar os 2 e contar laranjas frescas
        for i in 0..<lins {
            for j in 0..<cols {
                if g[i][j] == 2 {
                    fila.append([i, j])
                } else if g[i][j] == 1 {
                    fresh += 1
                }
            }
        }

        // Se nenhuma, já retorna
        if fresh == 0 { return 0 }

        //esq, dir, cima, baixo
        let dir = [[-1,0], [1,0], [0,-1], [0,1]]
        var mins = 0

        while !fila.isEmpty && fresh > 0 {
            mins += 1
            let qtd = fila.count

            // Percorre todas as pos de podres
            for _ in 0..<qtd {
                let pos = fila.removeFirst()
                let i = pos[0]
                let j = pos[1]

                // Testas todas as direções
                for d in dir {
                    let newI = i + d[0]
                    let newJ = j + d[1]
                    
                    // Validação se dentro da matriz
                    if newI >= 0 && newI < lins && newJ >= 0 && newJ < cols {
                        if g[newI][newJ] == 1 {
                            g[newI][newJ] = 2
                            fresh -= 1
                            fila.append([newI, newJ]) // Se tem podre -> add na fila
                        }
                    }
                }
            }  
        }
        
        return fresh > 0 ? -1 : mins   
    }
}
