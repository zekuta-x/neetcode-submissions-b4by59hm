class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var ans:Int = 0

        for i in 0..<prices.count-1 {
            for j in i+1..<prices.count {
                if ans < prices[j] - prices[i] {
                    ans = prices[j] - prices[i]
                }
            }
        }

        return ans
    }
}
