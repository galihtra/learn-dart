/**
 * Kata kunci null merupakan tipe data representasi data kosong
 * * 
 * */

 void main(List<String> args) {
  int? number1;

  print(number1);

  String? name;
  var namePeople = name ?? 'kosong';
  print(namePeople);
}