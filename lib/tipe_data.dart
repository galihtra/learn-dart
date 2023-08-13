/**
 *  Numbers
    Strings
    Booleans
    Lists
    Maps
    Sets
    Runes
    Null
 */

void main() {
  int num1 = 10;
  int num2 = 10;
  int result = num1 + num2;
  print(result);
  // runtimeType digunakan untuk mengecek tipe data dari variabel
  print(num1.runtimeType);

  String nama = "Hayuk";
  print(nama.runtimeType);

  // Mengubah Double Value To 2 Decimal Places
  double uang = 1122.09838376747;
  print(uang.toStringAsFixed(2));

  String name = "Galih";
  print("Hello $name");
  print("Hello " + name);

  // Create A Multi-Line String In Dart
  String multiLine = ''' 
  Hello saya galih
  Umur saya 19
  saya dari batam
  ''';
  print(multiLine);

  // Special karakter
  String description = "Hello saya galih\n Umur saya 19";
  print(description);

  // Convert String To Int In dart
  String strValue = "1"; 
  print(strValue.runtimeType);
  int intValue = int.parse(strValue);
  print(intValue.runtimeType);
  print("nilai dari strValue tadi adalah $intValue");

  // Convert Int To String In Dart
  int one = 1;
  print(one.runtimeType);
  String oneToString = one.toString();
  print(oneToString.runtimeType);
  print("Nilai sesudah diubah $oneToString");

  // List
  // tipe data yang berisikan kumpulan data
  var nameList = <String>["Galih", "windah", "Zopeto"];
  print(nameList);
  List<int> numbers= [10,10,10];
  print(numbers);

  var names = <String>[];
  names.add("Galih");
  names.add("Joko");
  names.add("Eko");
  // Ambil data berdasarkan index
  print(names[1]);
  // Ubah data
  names[0] = "Pato";
  print(names);
  // Ambil data berdasarkan panjang
  print(names.length);
  // Hapus data
  names.removeAt(2);
  print(names);


  List<int> angka = [3, 7, 2, 9, 5];

  print("List awal: $angka");

  // Menambahkan angka 4 ke dalam List
  angka.add(4);

  // Menghapus angka 2 dari List
  angka.remove(2);

  // Mengurutkan List secara ascending
  angka.sort();

  print("List setelah manipulasi: $angka");

  //  Tipe data set
  // Set tidak menerima duplikat data, artinya jika kita memasukkan data duplikat, hanya satu yang diterima, yang lainnya akan dihiraukan
  // Set tidak menjamin urutan data, jika dalam List, urutan data sudah pasti menggunakan index, pada Set tidak ada index
  Set<int> num = {1,2,3,4,5};
  num.add(10);
  num.remove(2);
  print(num);

  Set<String> fruits = {"Jeruk", "apel","Mangga"};
  print(fruits.length);

  // Tipe data map
  // Mempunyai Key - value
  Map<String,String> person = {};
  person['name'] = "Eka";
  person['address'] = "Bengkong";
  person['Status'] = "Jomblo";
  person.remove("Status");
  print(person);

  Map<String,int> friend = {};
  friend['Galih'] = 19;
  friend['eko'] = 20;
  friend['Reno'] = 11;
}
