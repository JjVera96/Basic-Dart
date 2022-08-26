Future myFuture(String field) => Future.delayed(
    Duration(seconds: 2), 
    () => 'Saying "Hello" from myFuture -- ' + field
  );

void main() {
  print('Before');
  myFuture('jjvera96').then( (data) => print(data));
  print('After');
}
