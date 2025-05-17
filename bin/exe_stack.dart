class ExeStack {
  void reversList({required List<int> listNumber}) {
    List firstSolve = [];
    for (int i = listNumber.length - 1; i >= 0; i--) {
      firstSolve.add(listNumber[i]);
    }
    List secondSolve = listNumber.reversed.toList();
    print(firstSolve);
    print(secondSolve);
  }

  bool check({required List list}) {
    int counter = 0;
    for (int i = 0; i < list.length; i++) {
      if (list[i] == '(') {
        counter++;
      } else if (list[i] == ')') {
        counter--;
      }
    }
    return counter == 0;
  }
}
