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

        for i in 0..<3 {
            for j in 0..<3 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        for i in 0..<3 {
            for j in 3..<6 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        for i in 0..<3 {
            for j in 6..<9 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        for i in 3..<6 {
            for j in 0..<3 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        for i in 3..<6 {
            for j in 3..<6 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        for i in 3..<6 {
            for j in 6..<9 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        for i in 6..<9 {
            for j in 0..<3 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        for i in 6..<9 {
            for j in 3..<6 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        for i in 6..<9 {
            for j in 6..<9 {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                }
                if num != "." {
                    set.insert(num)
                }
            }
        }
        set.removeAll()

        return true
    }
}
