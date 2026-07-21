class Solution {
    public List<List<String>> groupAnagrams(String[] strs) {
        List<List<String>> resp = new ArrayList<>();
        HashMap<String, Integer> map = new HashMap<>();

        for (String s : strs) {
            String key = toArray(s);

            if (!map.containsKey(key)) {
                int index = resp.size();

                List<String> list = new ArrayList<>();
                list.add(s);
                resp.add(list);

                map.put(key, index);
            } else {
                int index = map.get(key);
                resp.get(index).add(s);
            }
        }

        return resp;
    }

    private String toArray(String s) {
        int[] a = new int[26];

        for (char c : s.toCharArray()) {
            int i = c - 97;
            a[i]++;
        }

        return Arrays.toString(a);
    }
}

// Resp List list
//Hashmap (array, indice resp)
//percorrer strs
//A cada item -> array[26] onde o indice representa a letra
//Se esse array nao existe no map -> novo list no resp, add essa palavra
//Se esse array (como hash) existe no map -> add nalist do indice devolvido
//Retorna resp