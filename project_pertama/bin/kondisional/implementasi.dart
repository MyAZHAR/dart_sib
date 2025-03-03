import 'dart:io';
void main(){
  print('Program Penghitungan Total Hargas');
  print('=================================');

  // Input Nama Barang
  stdout.write('Nama Barang: ');
  String? namaBarang = stdin.readLineSync();

  //Input harga Barang
  stdout.write('Harga Barang(perunit): ');
  String? hargaInput = stdin.readLineSync();

  //Input Jumlah Barang
  stdout.write('Jumlah Barang: ');
  String? jmlInput = stdin.readLineSync();

  //kondisi Mengecek inputan pada data barang, harga, dan jumlah.
  if (hargaInput == null || jmlInput == null || namaBarang == null){
    print ("Inputan Tidak Falid");
    return;
  }
  //kodisi mengubah type data dari string ke integer
  int hargaBarang= int.parse(hargaInput);
  int jmlBarang= int.parse(jmlInput);
  int totalHarga= hargaBarang + jmlBarang;

  //menampilkan kategori
  print("\nPilih Kategori Barang: ");
  print("1. Elektronik");
  print("2. Fashion");
  print("3. Makanan");
  print("4. Lainya");

  stdout.write('Masukan nomor kategori (pilih no.1-4) :');
  String? kategoriInput = stdin.readLineSync();

  double diskon  = 0.0;
  String kategori= "";

  //Kondisi Switch case untuk mengubah anggka kedalam sebuah case atau ketegori

  switch (kategoriInput){
    case "1":
    kategori = "Elektronik";
    diskon = totalHarga * 0.10;
    break;
    case "2":
    kategori = "Fashion";
    diskon = totalHarga * 0.20;
    break;
    case "3":
    kategori = "Makanan";
    diskon = totalHarga * 0.05;
    break;
    case "4":
    kategori = "Lainnya";
    diskon = totalHarga * 0.02;
    break;
    default: print("kategor Tidak Valid");
  }

  //prosess untuk total harga

  double totalSetelahDiskon = totalHarga - diskon;

  double diskonTambahan = 0.0;
  if(totalHarga > 10000000){
    diskonTambahan = totalSetelahDiskon * 0.05;
    print("Anda mendapatkan tambahan diskon 5% karena pembelian diatas Rp10.000.000");
  }

  double totalBayar = totalSetelahDiskon - diskonTambahan;

  print("=============");
  print("Detai Transaksi");
  print("Nama Barang : $namaBarang");
  print("kategori : $kategori");
  print("Harga Barang : $hargaBarang");
  print("Jumlah Barang : $jmlBarang");
  print("Total Harga : $totalHarga");
  print("Diskon Kategori : Rp${diskon.toStringAsFixed(2)}");
  if (diskonTambahan > 0){
  print("Diskon Tambahan : Rp${diskonTambahan.toStringAsFixed(2)}");
  }
  print("Total Bayar     : Rp${totalBayar.toStringAsFixed(2)}");



}