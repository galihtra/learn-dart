/**
 *  If adalah Percabangan artinya kita bisa mengeksekusi kode program tertentu ketika suatu kondisi terpenuhi
 */

void main(List<String> args) {
  var nilai = 60;
  var absen = 80;

  if (nilai >= 80 && absen == 80) {
    print("Selamat anda lulus ujian");
  } else {
    print("Anda tidak lolos");
  }


  var grade = 79;

  if (grade >= 100) {
    print("Anda sangat pintar");
  } else if (grade >= 80) {
    print("Anda biasa saja");
  } else {
    print("Anda Bodoh");
  }


  var umur = 38;
  if (umur < 18) {
    print("Anda masih remaja.");
  } else if (umur >= 18 && umur <= 30) {
    print("Anda dewasa muda.");
  } else {
    print("Anda sudah dewasa.");
  }
}