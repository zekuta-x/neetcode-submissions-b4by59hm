class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var sFilter = s.filter { $0.isLetter || $0.isNumber }
        var sFilterLower = sFilter.lowercased()

        var sRev: [Character] = Array(sFilterLower)
        var cnt: Int = 0

        sRev.reverse()

        for char in sFilterLower {
            if char != sRev[cnt] {
                return false
            }
            cnt += 1
        }

        return true
    }
}
