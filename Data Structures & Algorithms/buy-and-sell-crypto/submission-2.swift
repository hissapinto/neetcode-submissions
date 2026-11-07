class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var resp = 0
        var l = 0
        var r = 1

        while r < prices.count {
            let profit = prices[r] - prices[l]
            if profit > resp { resp = profit }

            if prices[r] < prices[l] {
                l = r
            }

            r += 1
        }

        return resp
    }
}
