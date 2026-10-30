class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var set = Set<Character>()

        for i in 0..<9 {
            for j in 0..<9{
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
            set.removeAll()
        }

        for j in 0..<9 {
            for i in 0..<9{
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
            set.removeAll()
        }

        for square in 0..<9 {
            for i in 0..<3 {
                for j in 0..<3 {
                    let row = (square/3) * 3 + i
                    let col = (square%3) * 3 + j

                    let num = board[row][col]
                    if set.contains(num) {
                        return false
                    }
                    if num != "." {
                        set.insert(num)
                    }
                }
            }
            set.removeAll()
        }

        return true
    }
}
