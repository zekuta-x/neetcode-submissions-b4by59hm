class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var ans: [Int] = []

        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    ans.append(i)
                    ans.append(j)

                    return ans
                }
            }
        }

        return ans
    }
}

print(Solution())