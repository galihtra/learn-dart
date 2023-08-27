/**
 * Switch Case
 * Kondisi di switch statement hanya untuk perbandingan ==
 */
void main(List<String> args) {
  var value = 'D';
  switch (value) {
    case 'A':
      print("Nilai Anda Sangat Bagus");
      break; // Pemberhentian Sementara
    case 'B':
      print("Nilai Anda Baik");
      break;
    case 'C':
      print("Nilai Anda Cukup");
      break;
    default:
      print("Anda Tolol!");
  }

  /**
    1. Bulan Januari : Jumlah hari adalah 31 hari
    2. Bulan Februari : Jumlah hari adalah 28 / 29 hari
    3. Bulan Maret : Jumlah hari adalah 31 hari
    4. Bulan April : Jumlah hari adalah 30 hari
    5. Bulan Mei : Jumlah hari adalah 31 hari
    6. Bulan Juni : Jumlah hari adalah 30 hari
    7. Bulan Juli : Jumlah hari adalah 31 hari
    8. Bulan Agustus : Jumlah hari adalah 31 hari
    9. Bulan September : Jumlah hari adalah 30 hari
    10. Bulan Oktober : Jumlah hari adalah 31 hari
    11. Bulan November : Jumlah hari adalah 30 hari
    12. Bulan Desember : Jumlah hari adalah 31 hari
   */

  var bulan = "Juli";
  switch (bulan) {
    case "Januari":
    case "Maret":
    case "Mei":
    case "Juli":
    case "Agustus":
    case "Oktober":
    case "Desember":
      print("Jumlah hari adalah 31 hari");
      break;
    case "April":
    case "Juni":
    case "September":
    case "November":
      print("Jumlah hari adalah 30 hari");
      break;
    case "Februari":
      print("Jumlah hari adalah 28 / 29 hari");
      break;
    default:
    print("Bulan tidak valid");
  }
}
