class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var ans = 0

        for price in prices {
            minPrice = min(minPrice, price)
            ans = max(ans, price - minPrice)
        }

        return ans
    }
}
