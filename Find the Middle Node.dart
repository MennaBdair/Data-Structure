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

dynamic countNode(Node<dynamic>? head) {
  dynamic c = 0;
  var current = head;
  while (current != null) {
    c++;
    current = current.next;
  }
  return c;
}

void middelNode(Node<dynamic>? head, dynamic num) {
  var current = head, m = 0;

  while (current != null) {
    if (m == num) break;
    m++;
    current = current.next;
  }
  print(current!.value);
}

void main() {
  LinkedList link = new LinkedList();
  link.add(1);
  link.add(2);
  link.add(3);
  link.add(4);
  link.add(5);
  dynamic count = countNode(link.head);
  if (count % 2 == 0)
    count = (count / 2) - 1;
  else {
    count = (count - 1) / 2;
  }

  middelNode(link.head, count);
}
