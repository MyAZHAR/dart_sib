//modbil.dart
import 'kendaraan.dart';

class Mobil extends Kendaraan {
  int jumlahPintu;
  
  Mobil(super.merk, super.tahun, this.jumlahPintu);
  
  @override
  void servis() {
    print('Servis mobil $merk dilakukan.');
  }
  
  @override
  void tampilkanInfo() {
    print('Mobil: $merk ($tahun) - $jumlahPintu Pintu');
  }
}