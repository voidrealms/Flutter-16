//local
import 'package:libintro/libintro.dart' as cat;

//built in
import 'dart:convert';

main(List<String> arguments) {
  print('Hello world: ${cat.calculate()}!');

  Map<String, int> map = new Map<String,int>();
  map.putIfAbsent('Bryan', () => 43);
  map.putIfAbsent('Heather', () => 25);

  String enc = JSON.encode(map);
  print(enc);

  Map<String, int> people = JSON.decode(enc);

  people.forEach((key, value) {
    print('$key is $value years old');
  });
}
