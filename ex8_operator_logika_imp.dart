import 'dart:io';

void main(List<String> args) {
  int a;
  stdout.write('Masukkan nilai a [0..9]: ');
  a = int.tryParse(stdin.readLineSync()!) ?? -1; // Menggunakan tryParse untuk menangani input yang bukan angka

  if (a >= 0 && a <= 9) {
    print('Anda memasukkan nilai: $a');
  } else {
    print('Nilai yang dimasukkan harus 0..9');
  }
}
