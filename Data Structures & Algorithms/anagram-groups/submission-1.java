class Solution {
    public List<List<String>> groupAnagrams(String[] strs) {
        HashMap<String, List<String>> map = new HashMap<>();

        for (String s : strs) {
            String key = toArray(s);

            //Se a chave nao existe, cria k, se não retorna a lista
            //em cima dessa criaçao ou retorno se poe o .add
            map.computeIfAbsent(key, k -> new ArrayList<>()).add(s);
        }

        //map.values retorna Collection<List<String>>, que é convertida em new ArrayList
        //ArrayList é compativel com retorno List<>
        return new ArrayList<>(map.values());
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