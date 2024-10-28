void main() {
  List<int> array = [1, 3, 34, 55, 56, 67, 78, 88, 98, 99, 101];
  int searchedNumber = 99;
  int positionOfNumber = binarySearch(array, searchedNumber);
  print(positionOfNumber);
}

int binarySearch(List<int> array, int searchNumber) {
  int startIndex = 0;
  int finalIndex = array.length - 1;

  while (startIndex <= finalIndex) {
    int midIndex = ((startIndex + finalIndex) / 2).floor();

    if (array[midIndex] == searchNumber) {
      return midIndex;
    }
    if (array[midIndex] < searchNumber) {
      startIndex = midIndex + 1;
    } else {
      finalIndex = midIndex - 1;
    }
  }
  return -1;
}
