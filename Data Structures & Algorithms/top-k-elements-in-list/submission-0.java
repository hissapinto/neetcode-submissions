class Solution {
    public int[] topKFrequent(int[] nums, int k) {
        Map<Integer, Integer> map = new HashMap<>();
        List<Integer>[] freq = new ArrayList[nums.length];
        int[] resp = new int[k];

        //Inicializa array de list
        for (int i = 0; i < nums.length; i++) {
            freq[i] = new ArrayList<Integer>();
        }

        //preenche o map com qtd
        for (int n : nums) {
            map.put(n, map.getOrDefault(n, 0) + 1);
        }

        //percorre mapa e preencher vetor de freq
        map.forEach((num, qtd) -> {
            freq[qtd - 1].add(num);
        });

        //percorre freq pra prencher vetor reposta
        int index = 0;
        for (int i = freq.length - 1; i >= 0; i--) {
            for (int n : freq[i]) {
                resp[index] = n;
                index++;
                if (index >= k) {
                    return resp;
                }
            }
        }

        return resp;
    }
}
