class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var sCopy = s

        let sFilter = sCopy.filter { $0.isLetter || $0.isNumber }
        let sRev = sFilter.reversed()

        if sFilter.lowercased() == String(sRev).lowercased() {
            return true
        } else {
            return false
        }
    }
}
