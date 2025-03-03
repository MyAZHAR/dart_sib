//kendaraan.dart
abstract class Kendaraan {
  String merk;
  int tahun;
  
  Kendaraan(this.merk, this.tahun);
  
  void servis();
  
  void tampilkanInfo() {
    print('$merk ($tahun)');
  }
}