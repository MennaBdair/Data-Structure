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

void RemoveAllOccurrences(Node<dynamic>? head, dynamic n) {
  Node? cur1 = head;
  Node? cur2 = head;
  if (head!.value == n) {
    head = head.next;
  }
  while (cur1 != null) {
    if (cur1.value == n) {
      cur2!.next = cur1.next;
      cur1 = cur2.next;
    } else {
      cur2 = cur1;
      cur1 = cur1.next;
    }
  }
}

void main() {
  LinkedList link = new LinkedList();
  link.add(1);
  link.add(7);
  link.add(3);
  link.add(2);
  link.add(5);
  link.add(7);
  link.add(7);
  print('LinkedList before remove:');
  print('$link');
  RemoveAllOccurrences(link.head, 7);
  print('LinkedList after remove:');
  print('$link');
}
