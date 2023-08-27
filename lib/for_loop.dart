/**
 * For Loop
 * For adalah salah satu kata kunci yang bisa digunakan untuk melakukan perulangan
  Blok kode yang terdapat di dalam for akan selalu diulangi selama kondisi for terpenuhi
 */

void main(List<String> args) {
  for (var i = 1; i <= 10; i++) {
    print("Perulangan ke-${i}");
  }

  for (var i = 1; i <= 5; i++) {
    print("Galih ke-${i}");
  }

  print("Tanpa For Loop");
  // Tanpa For Loop
  print("Galih ke-1");
  print("Galih ke-2");
  print("Galih ke-3");
  print("Galih ke-4");
  print("Galih ke-5");

  // for (; ;) {
  //   print("Hello");
  // }


  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }


  

}
