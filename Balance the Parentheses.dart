void main() {
  String test1 = '()()((()))'; //true
  print('$test1 is ${cheakBalanced(test1)}');
  String test2 = '()))(f)'; //false
  print('$test2 is ${cheakBalanced(test2)}');
  String test3 = '))()'; //false
  print('$test3 is ${cheakBalanced(test3)}');
}

bool cheakBalanced(String s) {
  Stack<String> stack1 = new Stack();
  Stack<String> stack2 = new Stack();
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(')
      stack1.push(s[i]);
    else if (s[i] == ')') stack2.push(s[i]);
  }

  if (size(stack1) == size(stack2))
    return true;
  else
    return false;
}

int size(Stack s) {
  int c = 0;
  while (!s.isEmpty()) {
    s.pop();
    c++;
  }
  return c;
}

class Stack<T> {
  final List<T> stack = [];

  void push(elment) =>stack.add(elment);
  

  T pop() => stack.removeLast();
  

  T Top() => stack.last;
  

  bool isEmpty() => stack.isEmpty;

  @override
  String toString() => stack.toString();
}
