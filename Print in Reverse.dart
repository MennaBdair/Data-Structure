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

void reverseLinked(Node<dynamic>? head) {
  List<dynamic> m = [];
  var current = head;
  if (current == null)
    return;
  else {
    while (current != null) {
      m.add(current.value);
      current = current.next;
    }
    for (int i = m.length - 1; i >= 0; i--) {
      print('${m[i]}');
    }
  }
}

void main() {
  LinkedList link = new LinkedList();
  link.add(1);
  link.add(2);
  link.add(3);
  link.add(4);

  print('Original linked list:\n'' $link');
  print('Linked list in reverse:');
  reverseLinked(link.head);
}
