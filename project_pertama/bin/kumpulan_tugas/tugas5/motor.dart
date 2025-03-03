//motor.dart
import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool memilikiKeranjang;
  
  Motor(super.merk, super.tahun, this.memilikiKeranjang);
  
  @override
  void servis() {
    print('Servis motor $merk dilakukan.');
  }
  
  @override
  void tampilkanInfo() {
    String keranjang = memilikiKeranjang ? 'Dengan Keranjang' : 'Tanpa Keranjang';
    print('Motor: $merk ($tahun) - $keranjang');
  }
}