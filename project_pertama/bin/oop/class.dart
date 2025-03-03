class Sepeda {
  String? warna;
  int? ukuran;
  int? kecepatan;


  void changeGear(int newValue) {
    kecepatan = newValue;
  }

  void display() {
    print("Color         : $warna");
    print("Size          : $ukuran");
    print("Current Speed : $kecepatan");
  }

}

void main(){
  Sepeda bicycle = Sepeda();
  bicycle.warna = "Red";
  bicycle.ukuran = 25;
  bicycle.kecepatan = 0;
  bicycle.changeGear(5);
  bicycle.display();
}