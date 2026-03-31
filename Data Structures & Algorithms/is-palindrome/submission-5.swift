class Solution {
    func isPalindrome(_ s: String) -> Bool {
        // sの小文字化を行い、文字と数字のみ取り出しする
        var sFilter = s.filter { $0.isLetter || $0.isNumber }
        var sFilterL = sFilter.lowercased()

        var sRev: [Character] = Array(sFilterL)
        var cnt: Int = 0

        sRev.reverse()

        for char in sFilterL {
            if char != sRev[cnt] {
                return false
            }
            cnt += 1
        }

        return true
    }
}
