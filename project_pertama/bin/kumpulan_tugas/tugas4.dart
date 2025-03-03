import 'dart:io';

void main() {
  List<Map<String, dynamic>> dataPegawai = inputDataPegawai();

  tampilkanNomorPegawai(dataPegawai);
  tampilkanPegawaiGenapGanjil(dataPegawai);
  cetakDataPegawai(dataPegawai);

  double totalGaji = hitungTotalGaji(dataPegawai);
  print("\nTotal Gaji Seluruh Pegawai: $totalGaji");

  tampilkanTunjangan(dataPegawai);
  tampilkanBonus(dataPegawai);
  tampilkanGajiBersih(dataPegawai);
}

// 1. Fungsi untuk menerima input data pegawai
List<Map<String, dynamic>> inputDataPegawai() {
  stdout.write("Masukkan jumlah pegawai: ");
  int jumlahPegawai = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> dataPegawai = [];

  for (int i = 1; i <= jumlahPegawai; i++) {
    stdout.write("Masukkan nama pegawai ke-$i: ");
    String nama = stdin.readLineSync()!;

    stdout.write("Masukkan ID pegawai ke-$i: ");
    int id = int.parse(stdin.readLineSync()!);

    stdout.write("Masukkan jabatan pegawai ke-$i (Manager/Staff): ");
    String jabatan = stdin.readLineSync()!;

    stdout.write("Masukkan gaji pegawai ke-$i: ");
    double gaji = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan jumlah tahun kerja pegawai ke-$i: ");
    int tahunKerja = int.parse(stdin.readLineSync()!);

    dataPegawai.add({
      'nomor': i,
      'id': id,
      'nama': nama,
      'jabatan': jabatan,
      'gaji': gaji,
      'tahunKerja': tahunKerja,
    });
  }

  return dataPegawai;
}

// 2. Fungsi untuk menampilkan nomor pegawai
void tampilkanNomorPegawai(List<Map<String, dynamic>> dataPegawai) {
  print("\nNomor Pegawai:");
  for (var pegawai in dataPegawai) {
    print("Pegawai ${pegawai['nomor']}: ${pegawai['nama']}");
  }
}

// 3. Fungsi untuk menampilkan pegawai dengan ID genap dan ganjil
void tampilkanPegawaiGenapGanjil(List<Map<String, dynamic>> dataPegawai) {
  print("\nPegawai dengan ID Genap:");
  for (var pegawai in dataPegawai) {
    if (pegawai['id'] % 2 == 0) {
      print("${pegawai['nama']} (ID: ${pegawai['id']})");
    }
  }

  print("\nPegawai dengan ID Ganjil:");
  for (var pegawai in dataPegawai) {
    if (pegawai['id'] % 2 != 0) {
      print("${pegawai['nama']} (ID: ${pegawai['id']})");
    }
  }
}

// 4. Fungsi untuk mencetak data pegawai menggunakan for-in dan forEach
void cetakDataPegawai(List<Map<String, dynamic>> dataPegawai) {
  print("\nData Pegawai (for-in):");
  for (var pegawai in dataPegawai) {
    print("Nomor: ${pegawai['nomor']}, Nama: ${pegawai['nama']}, ID: ${pegawai['id']}, Jabatan: ${pegawai['jabatan']}, Gaji: ${pegawai['gaji']}, Tahun Kerja: ${pegawai['tahunKerja']}");
  }

  print("\nData Pegawai (forEach):");
  // ignore: avoid_function_literals_in_foreach_calls
  dataPegawai.forEach((pegawai) {
    print("Nomor: ${pegawai['nomor']}, Nama: ${pegawai['nama']}, ID: ${pegawai['id']}, Jabatan: ${pegawai['jabatan']}, Gaji: ${pegawai['gaji']}, Tahun Kerja: ${pegawai['tahunKerja']}");
  });
}

// 5. Fungsi untuk menghitung total gaji pegawai
double hitungTotalGaji(List<Map<String, dynamic>> dataPegawai) {
  double total = 0;
  for (var pegawai in dataPegawai) {
    total += pegawai['gaji'];
  }
  return total;
}

// 6. Fungsi untuk menentukan tunjangan pegawai berdasarkan jabatan
double hitungTunjangan(String jabatan, [double tunjanganManager = 1000000, double tunjanganStaff = 500000]) {
  return jabatan.toLowerCase() == 'manager' ? tunjanganManager : tunjanganStaff;
}

// 7. Fungsi untuk menampilkan tunjangan pegawai
void tampilkanTunjangan(List<Map<String, dynamic>> dataPegawai) {
  print("\nTunjangan Pegawai:");
  for (var pegawai in dataPegawai) {
    double tunjangan = hitungTunjangan(pegawai['jabatan']);
    print("${pegawai['nama']} (${pegawai['jabatan']}): Tunjangan $tunjangan");
  }
}

// 8. Fungsi rekursif untuk menghitung bonus tahunan pegawai
double hitungBonus(int tahunKerja) {
  return tahunKerja == 0 ? 0 : 500000 + hitungBonus(tahunKerja - 1);
}

// 9. Fungsi untuk menampilkan bonus tahunan pegawai
void tampilkanBonus(List<Map<String, dynamic>> dataPegawai) {
  print("\nBonus Tahunan Pegawai:");
  for (var pegawai in dataPegawai) {
    double bonus = hitungBonus(pegawai['tahunKerja']);
    print("${pegawai['nama']} (${pegawai['tahunKerja']} tahun): Bonus $bonus");
  }
}

// 10. Arrow function untuk menghitung gaji bersih setelah pajak
double hitungGajiBersih(double gaji) => gaji * 0.9; // Pajak 10%

// 11. Fungsi untuk menampilkan gaji bersih setelah pajak
void tampilkanGajiBersih(List<Map<String, dynamic>> dataPegawai) {
  print("\nGaji Bersih Setelah Pajak:");
  for (var pegawai in dataPegawai) {
    double gajiBersih = hitungGajiBersih(pegawai['gaji']);
    print("${pegawai['nama']}: Gaji Bersih $gajiBersih");
  }
}