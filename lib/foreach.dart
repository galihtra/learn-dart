// Each adalah function yang berfungsi untuk melakukan perulangan

void main(List<String> args) {
  List<String> players = ["Messi","Ronaldo","Neymar"];
  // Tanpa Foreach
  for (var i = 0; i < players.length; i++) {
    print(players[i]);
  }

  print("Pembatas");
  // Pakai Foreach
  players.forEach((element) { print(element); });

  //Pakai foreach
  List<int> numbers = [1,2,3,4,5];
  int total = 0;
  numbers.forEach((element) { 
    print(element);
  });

  // Tanpa Foreach
  for (var i = 1; i <= 5; i++) {
    print(i);
  }
}