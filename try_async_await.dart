
Future<String> getName() async => 'jjvera96';

Future<String> f1() async {
  print('Before f1');
  final name = await getName();
  print(name);
  print('After f1');
  return '0';
}

String f2() {
  print('Before f2');
  getName().then((value) => print(value));
  print('After f2');
  return '0';
}

void main() async {
  await f1();
  f2();
}