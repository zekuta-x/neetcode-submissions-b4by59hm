class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash: [Int: Int] = [:]
        for (i, num) in nums.enumerated() {
            let partner = target - num
            if let j = hash[partner] {
                return [j,i]
            }

            hash[num] = i
        }

        return[]
    }
}
