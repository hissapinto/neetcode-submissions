class DynamicArray {
    private int[] array;
    private int capacity;
    private int qtt;

    public DynamicArray(int capacity) {
        if (capacity > 0) {
            this.array = new int[capacity];
            this.capacity = capacity;
            this.qtt = -1;
        }
    }

    public int get(int i) {
        return array[i];
    }

    public void set(int i, int n) {
        array[i] = n;
    }

    public void pushback(int n) {
        if (qtt+1>=capacity) {
            resize();
        }
        qtt++;
        array[qtt] = n;
    }

    public int popback() {
        if (qtt >= 0) {
            qtt--;
            return array[qtt+1];
        }
        return 0;
    }

    private void resize() {
        this.capacity = capacity*2;
        int[] aux = new int[capacity];

        for(int i = 0; i<=qtt; i++) {
            aux[i] = array[i];
        }

        this.array = aux;
    }

    public int getSize() {
        return this.qtt+1;
    }

    public int getCapacity() {
        return this.capacity;
    }
}
