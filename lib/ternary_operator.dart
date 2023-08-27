/**
 * 
 * Ternary operator adalah operator sederhana dari if 
 * Ternary operator terdiri dari  kondisi yang dievaluasi, jika menghasilkan true maka nilai pertama diambil, 
 * jika false, maka nilai kedua diambil
 */
void main(List<String> args) {
  // Tanpa Ternary Operator
  var nilai = 75;
  String ucapan;

  if (nilai >= 75) {
    ucapan = "Selamat anda lulus";
  } else {
    ucapan = "Anda Tolol!";
  }

  print(ucapan);

  // Menggunakan Ternary Operator
  var toSay = nilai >= 75 ? "Selamat Anda Lulus" : "Anda Tolol!";
  print(toSay);


  // EXERCISE
  int number = 2;
  var checkOddEven = number % 2 == 0 ? "Angka Genap" : "Angka Ganjil";
  print(checkOddEven);
}