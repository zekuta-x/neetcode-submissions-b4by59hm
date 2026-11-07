class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen: [Int: Int] = [:]
        // numsの位置と値を取得
        for (i, num) in nums.enumerated() {
            // 相方の数 = 目標の合計 - 今の数
            let partner = target - num
            // 相方の数がすでに登録されているか
            if let j = seen[partner] {
                // 登録されている場合、相方の位置と、今の位置を返す
                return [j,i]
            }
            // 登録されていない場合、現在の位置と数字を記録
            seen[num] = i
        }
        return []
    }
}
