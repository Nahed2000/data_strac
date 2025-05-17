import 'dart:io';

class Node {
  var value;
  Node? next;

  Node(this.value, [this.next]);

  static void reversValue(Node? node) {
    if (node == null) return;
    reversValue(node.next);
    print(node.value);
  }

  static Node? middleNode(Node? node) {
    if (node == null) return null;
    Node? slow = node;
    Node? fast = node;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }
    return slow;
  }

  static Node? challenge3(Node? node) {
    Node? prev;
    Node? current = node;
    while (current != null) {
      Node? next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    return prev;
  }


  static Node? removeAll(Node? node, int target) {
    while (node != null && node.value == target) {
      node = node.next;
    }

    Node? current = node;
    while (current != null && current.next != null) {
      if (current.next!.value == target) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }

    return node;
  }


  void customPrint() {
    Node? current = this;
    while (current != null) {
      stdout.write(current.value);
      current = current.next;
    }
  }
}
