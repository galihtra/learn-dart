/**
 * Do while ini mirip dengan while
 * Pengecekan kondisi di while loop dilakukan di awal sebelum perulangan dilakukan, 
 * sedangkan di do while loop dilakukan setelah perulangan dilakukan
 */

void main(List<String> args) {
  var counter = 1;
  do {
    print("Perulangan ke-${counter}");
    counter = counter + 1; // counter++
  } while (counter <= 10);
}