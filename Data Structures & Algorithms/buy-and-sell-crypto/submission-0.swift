class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var min: Int = 101
        var profit: Int = 0
        var maxProfit: Int = 0

        for price in prices {
            if min >= price {
                min = price
            }

            profit = price - min

            if maxProfit < profit {
                maxProfit = profit
            }
        }

        return maxProfit
    }
}

print(Solution())