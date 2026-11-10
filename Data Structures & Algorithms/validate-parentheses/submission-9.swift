class Solution {
    func isValid(_ s: String) -> Bool {
        let validation: [Character:Character] = [")":"(", "]":"[", "}":"{"]
        var pilha: [Character] = []

        for c in s {
            if validation.keys.contains(c) {
                let other = validation[c]

                guard let p = pilha.popLast(), p == other else {
                    return false
                }
            } else {
                pilha.append(c)
            }  
        }

        return pilha.isEmpty
    }
}
