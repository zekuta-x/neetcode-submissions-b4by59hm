class Solution {
    func isPalindrome(_ s: String) -> Bool {
        // sの小文字化を行い、文字と数字のみ取り出しする
        var sFilter = s.lowercased().filter { $0.isLetter || $0.isNumber }
        // return sFilter == String(sFilter.reversed())

        var sRev: [Character] = Array(sFilter)
        var cnt: Int = 0

        sRev.reverse()

        for char in sFilter {
            if char != sRev[cnt] {
                return false
            }
            cnt += 1
        }

        return true
    }
}
