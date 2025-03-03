//main.dart
import 'garasi.dart';
import 'mobil.dart';
import 'motor.dart';

void main() {
  Garasi garasi = Garasi();
  
  Mobil mobil = Mobil('Toyota Camry', 2022, 4);
  Motor motor = Motor('Yamaha R15', 2020, false);
  
  garasi.tambahKendaraan(mobil);
  garasi.tambahKendaraan(motor);
  
  garasi.tampilkanDaftarKendaraan();
  
  garasi.lakukanServis();
}