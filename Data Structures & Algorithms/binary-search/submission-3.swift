class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1 

        while(left <= right) {
            var center = left + (right - left) / 2

            if nums[center] == target {
                return center
            }

            if nums[center] < target {
                left = center + 1
            } else {
                right = center - 1
            }
        }
        return -1
    }
}

print(Solution())