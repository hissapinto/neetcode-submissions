class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var resp = -1

        var l = 0
        var r = heights.count - 1

        while (l < r) {
            let dist = r - l
            let smallestHeight = min(heights[l], heights[r])
            let area = dist * smallestHeight

            resp = max(area, resp)

            if heights[l] < heights[r] {
                l += 1
            } else {
                r -= 1
            }
        }

        return resp
    }
}
