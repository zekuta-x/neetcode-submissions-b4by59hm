class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let sFilter = s.filter { $0.isLetter || $0.isNumber }.lowercased()
        let sRev = sFilter.reversed()

        if sFilter == String(sRev) {
            return true
        } else {
            return false
        }
    }
}
