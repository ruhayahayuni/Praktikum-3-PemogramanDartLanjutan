import 'dart:io';

void main(List<String> args) {
  int i = 0;
  
  while (i < 5) {
    print('Baris $i');
    i++;
  }
  
  int n;
  double total = 0.0, data, rata2;
  
  stdout.write('\nMasukkan jumlah data: ');
  try {
    n = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Error: Masukkan angka yang valid.");
    return;
  }
  
  for (i = 0; i < n; i++) {
    stdout.write('Data ke-${i + 1}: ');
    try {
      data = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Error: Masukkan angka yang valid.");
      return;
    }
    total += data;
  }
  
  if (n != 0) {
    rata2 = total / n;
    print('\nJumlah \t\t= $total');
    print('Rata-rata \t= $rata2');
  } else {
    print("Tidak ada data yang dimasukkan.");
  }
}
