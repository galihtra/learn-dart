/***
 * Function Parameter
 */


//  Fungsi utama yg akan selalu dijalankan ketika membuat sebuah program
// function yg akan dijalankan pertama kali oleh dart
void main(List<String> args) {  
  sayHello('Galih',19);
  sayHay(name: 'galih');
  print(sum([2,2,2]));
  print(hello("Galih"));
  print(hay('galih'));

// Inner function (function yg ada didalam function)
  void car(String name) {
    print("Mobil $name");
  }

  car("Avanza");


  void even(int number) {
    if (number % 2 == 0) {
      print('ini bilangan genap: $number');
    } else {
      print('ini bukan genap');
    }
  }

  even(1);


}

// Tanpa parameter
// void sayHello() {
//   String name = "Galih";
//   print("Hello ${name}");
// }

// Gunakan parameter
void sayHello(String firstName, int age, [String? lastName = '']) {
  print("Hello $firstName $lastName umur saya $age");
}

// named paramater
void sayHay({String? name}) {
  print("Hai $name");
}

// Function return value
// Void default mengembalikkan nilai null
// return value adalah mengembalikan nilai, kata kunci itu ialah return

int sum(List<int> numbers) {
  var total = 0;
  for (var value in numbers) {
      total += value;
  }
  return total;
}

String hello(String name) {
  return "Hello $name";
}

// Short Expression
String hay(String name) => "Hay $name";



