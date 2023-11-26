int countAlphabets(String name) {
  int count = 0;
  for (int i = 0; i < name.length; i++) {
    if (name[i].toUpperCase() != name[i].toLowerCase()) {
      count++;
    }
  }
  return count;
}