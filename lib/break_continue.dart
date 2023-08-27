/** 
 * Break untuk menghentikan case pada switch
 * Break untuk menghentikan seluruh perulangan
 * Continue digunakan untuk menghentikan perulangan saat ini lalu melanjutkan nya ke perulangan selanjutnya
 */

void main(List<String> args) {
  // Contoh Break
  var counter = 1;
   while (true) {
     print("Perulangan ke-${counter}");
     counter++;

     if (counter > 10) {
       break;
     }
   }

  //  Contoh Continue
  for (var i = 0; i <= 30; i++) {
    //  Genap di stop dan dilanjutkan ke bilangan ganjil
    if (i % 2 == 0) {
      continue;
    }

    print("Perulangan Ganjil ke-${i}");
  }

  // Contoh break 2 
  for (var i = 1; i <= 10; i++) {
    
    // Jika sudah sampai lima maka perulangan dihentikan atau dibreak
    if (i == 5) {
      break;
    }
    print(i);
  }

  print("Pembatas");

  // Contoh Continue
  for (var i = 1; i <= 10; i++) {
    
    // Jika sudah sampai lima maka perulangan dihentikan atau dibreak
    if (i == 5) {
      continue;
    }
    print(i);
  }
}