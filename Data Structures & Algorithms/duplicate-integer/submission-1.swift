class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var beforeNumber: Int? = nil
        var numsSort = nums
        numsSort.sort()

        for i in 0..<numsSort.count {
            if beforeNumber != nil, beforeNumber == numsSort[i] {
                return true
            }
            beforeNumber = numsSort[i]
        }

        return false
    }
}


