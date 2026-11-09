class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let lin = matrix.count
        let col = matrix[0].count

        // Binary search na matrix
        var top = 0, bot = lin - 1
        while top <= bot {
            let mm = (bot - top)/2 + top

            if matrix[mm][0] > target {
                bot = mm - 1
            } else if matrix[mm][col - 1] < target {
                top = mm + 1
            } else {
                break
            }
        }

        if bot < top {
            return false
        }

        // binary search in the row
        let mm = (bot - top)/2 + top
        var l = 0, r = col - 1
        while l <= r {
            let m = (r - l)/2 + l

            if matrix[mm][m] > target {
                r = m - 1
            } else if matrix[mm][m] < target {
                l = m + 1
            } else {
                return true
            }
        }

        return false
    }
}
