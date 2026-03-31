class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        // ユニークなIntを保持する変数
        var box: Set<Int> = Set<Int>()

        for num in nums {
            if box.contains(num) {
                return true
            } else {
                box.insert(num)
            }
        }

        return false
    }
}


