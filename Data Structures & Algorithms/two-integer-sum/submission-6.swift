class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen: [Int: Int] = [:]
        for (i, num) in nums.enumerated() {
            let partner = target - num
            if let j = seen[partner] {
                return [j,i]
            }
            seen[num] = i
        }
        return []
    }
}
