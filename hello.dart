import 'dart:io';
import 'dart:math';

void main() {
  var Random_num = Random();
  var random = Random_num.nextInt(101) + 1;
  int count = 0;
//   print(random);
  print("╔══════════════════════════════════════════════════════════════╗");
  print("║                         GUESS THE NUMBER                     ║");
  print("╟──────────────────────────────────────────────────────────────╢");
  while (true) {
    stdout.write("║ Guess the number between 1 and 100:");
    String? input = stdin.readLineSync();

    var x = int.tryParse(input!);
    if (x == null) {
      continue;
    }
    count++;
    if (x == random) {
      print("║ ➜  $x is CORRECT ❤ ,total guesses:$count");
      print("╟──────────────────────────────────────────────────────────────╢");
      break;
    }

    print((x > random) ? "║ ➜  $x is TOO HIGH! ▲" : "║ ➜  $x is TOO LOW! ▼");
    print("╟──────────────────────────────────────────────────────────────╢");
  }
  print("║                         THE END                              ║");
  print("╚══════════════════════════════════════════════════════════════╝");
}
