import 'dart:io';
void main(){
  print ("Masukan Data Pada Berikut:");
  print ("==========================");

   // Input Nama Barang
  stdout.write('Nama Mahasiswa : ');
  String? namaMahasiswa = stdin.readLineSync();

  stdout.write('Masukan NIM    : ');
  String? nimMahasiswa = stdin.readLineSync();

  //Input harga Barang
  stdout.write("Masukan nilai  : ");
  int nilaiInput = int.parse(stdin.readLineSync()!);

  if (nilaiInput < 0 || nilaiInput > 100) {
    print("Nilai harus antara 0 hingga 100.");
    return;
  }

  print("==========================");
  print("\nHasil Nilai");
  print("Nama Mahasiswa  : $namaMahasiswa");
  print("NIM Mahasiswa   : $nimMahasiswa");
  print("Nilai Mahasiswa : $nilaiInput");

  int nilaiMahasiswa = nilaiInput;

  //Mengevaluasi nilai dengan menggunakan if-else
    print("\n(Menampilakan peringkat dengan if-else)");
  if (nilaiMahasiswa >= 90){
    print ("Peringkat       : A - Sangat Baik");
  }
  
  else if (nilaiMahasiswa >= 80){
    print ("Peringkat       : B - Baik");
  }
  
  else if (nilaiMahasiswa >= 70){
    print ("Peringkat       : C - CUkup");
  }
  
  else if (nilaiMahasiswa >= 60){
    print ("Peingkat        : D - Kurang");
  }

  else if (nilaiMahasiswa < 60){
    print ("Peringkat       : E - Gagal");
  }

  else {print ("input tidak valid");}


  print("\n(Menampilkan peringkan menggunakan switch case)");
  //Mengevaluasi nilai dengan menggunakan switch-case
  switch (nilaiInput ~/ 10) {
    case 10:
    case 9:
      print("peringkat       : A");
      break;
    case 8:
      print("peringkat       : B");
      break;
    case 7:
      print("peringkat       : C");
      break;
    case 6:
      print("peringkat       : D");
      break;
    default:
      print("peringkat       : E");
  }
  
}