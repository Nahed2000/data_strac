import 'exe_stack.dart';
import 'linked_in.dart';

ExeStack exeStack = ExeStack();

void main() {
  // TODO: Stack
  ///1 revers
  exeStack.reversList(listNumber: [1, 2, 3, 7, 5, 9, 0]);
  print('*****');

  ///2 check
  print(exeStack.check(list: [')', '(', '(', ')']));
  print('*****');

  // TODO: LinkedList
  ///1 revers
  Node list = Node('One', Node('Two', Node('Third')));
  Node.reversValue(list);
  print('*****');

  ///2 middleNode
  Node middle = (Node(1, Node(2, Node(3))));
  final we = Node.middleNode(middle);
  if (we != null) {
    print('middle is ${we.value}');
  } else {
    print('something went wrong');
  }
  print('*****');

  ///challenge 3 :
  Node listNumber = Node(1, Node(2, Node(3, Node(4))));
  print("Original list:");
  listNumber.customPrint();
  Node? reversed = Node.challenge3(listNumber);
  print("\nReversed list:");
  reversed?.customPrint();
  print('\n*******');

  ///challenge 4
  Node listToRemove =
      Node(1, Node(2, Node(3, Node(4, Node(5, Node(8, Node(1, Node(1))))))));
  print('\n*******');
  print("Before remove:");
  listToRemove.customPrint();
  Node? updated = Node.removeAll(listToRemove, 1);
  print("\nAfter remove:");
  updated?.customPrint();
}
