class Hero {
  String name;
  String power;

  Hero({
    required this.name, 
    required this.power
  });

  Hero.fromJson(Map<String, String> json):
    this.name = json["name"]!,
    this.power = json["power"] ?? 'no power';

  String toString() {
    return 'Hero -> name ${this.name}, power ${this.power}';
  }

}


void main(){
  final ironman = Hero(name: 'ironman', power: 'money');
  print(ironman);

  final rawJson = {
    'name': 'hulk',
    'power': 'force'
  };

  final hulk = Hero.fromJson(rawJson);
  print(hulk);

  final me = Hero.fromJson({'name': 'me'});
  print(me);
}