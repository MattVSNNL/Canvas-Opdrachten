int[]array = new int[10];

for (int i = 0; i < array.length; i++) {
  array[i] = int(random(1, 10));
}

printArray(array);

for (int i = 0; i < array.length; i++) {
  for (int j = i + 1; j < array.length; j++) {
    if (array[i] == array[j]) {
      println("Duplicate number: " + array[i]);
    }
  }
}
