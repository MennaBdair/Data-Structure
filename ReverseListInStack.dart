void main() {
  List<dynamic> m = [1, 2, 3, 4, 5];
  print('$m');
  reversfun(m);
  print('$m');
}

void reversfun(List m) {
  Stack<dynamic> stack = new Stack();

  for (int i = 0; i < m.length; i++) {
    stack.push(m[i]);
  }
  for (int i = 0; i < m.length; i++) {
    m[i] = stack.pop();
  }
}



class Stack<T> {
  final List<T> s = [];

  void push(T element) {
    s.add(element);
  }

  T pop() {
    return s.removeLast();
  }

  bool isEmpty() {
    return s.isEmpty;
  }

  T Top() {
    return s.last;
  }

  bool isempty() {
    return s.isEmpty;
  }
}
