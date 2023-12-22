class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;

  bool get isEmpty => head == null;
  void push(T value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void add(T value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}

Node<dynamic>? reverseDirection(Node<dynamic>? head) {
  Node? pre = null;
  Node? cur = head;
  Node? next;

  while (cur != null) {
    next = cur.next;
    cur.next = pre;
    pre = cur;
    cur = next;
  }

  return pre;
}

void main() {
  LinkedList link = new LinkedList();
  link.add(1);
  link.add(2);
  link.add(3);
  link.add(4);
  link.add(5);

  print('the lenkedlist before:');
  print('$link');
  link.head=reverseDirection(link.head);
  print('the linkedlist after:');
  print('$link');
}
