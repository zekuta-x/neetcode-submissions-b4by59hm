class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var hashMap: [Character: Int] = [:]

        if s.count != t.count {
            return false
        }

        for char in s {
            hashMap[char, default: 0] += 1
        }

        for char in t {
            hashMap[char, default: 0] -= 1
        }

        for char in s {
            if hashMap[char] != 0 {
                return false
            }
        }

        return true
    }
}
