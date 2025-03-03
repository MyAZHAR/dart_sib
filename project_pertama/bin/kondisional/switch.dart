import 'dart:io';

void main() {
  print("===== Lampu Lalu Lintas =====");
  stdout.write("Masukan Warna: ");
  var warna = stdin.readLineSync();
  // ignore: non_constant_identifier_names
  String Arti;
  switch (warna){
    case 'merah' : Arti = 'Berhenti';
      break;
    case 'kuning' : Arti = 'Bersedia';
      break;
    case 'hijau' : Arti = 'Maju';
      break;
    default: Arti = 'Lampu lalu lintas tidak ada';
  }
  print('Arti Warna: $Arti');
}