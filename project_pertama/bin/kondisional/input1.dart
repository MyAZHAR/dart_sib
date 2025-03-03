import 'dart:io';
void main(){
  stdout.write("Masukan nama anda :");
  String? nama = stdin.readLineSync();
  print("Halo, $nama");
  print("Hello");//output ini keluar di baris baru
  stdout.write("Salam"); //output ini keluar tanpa baris
  stdout.write("Kenal"); //output ini keluar tanpa baris
}