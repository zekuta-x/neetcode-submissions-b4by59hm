class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var sHashmap: [Character:Int] = [:]

        for char in s {
            sHashmap[char, default: 0] += 1
        }

        for char in t {
            sHashmap[char, default: 0] -= 1
        }

        for int in sHashmap.values {
            if int != 0 {
                return false
            }
        }

        return true
    }
}
