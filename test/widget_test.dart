void main() {
  //tipe data dan variabele
  //var
  var mahasiswa = "jejen";
  var umur = 20;

  print(mahasiswa + " umur = " + umur.toString());

  //string
  String mahasiswaString;
  mahasiswaString = "aan";

  print(mahasiswaString);

  //int
  int semester;
  semester = 6;

  print(semester);

  //double
  double ipk;
  ipk = 3;

  print(ipk);

  //boolean
  bool benar = true;
  bool salah = false;
  bool tidakbenar = !true;
  bool tidaksalah = !false;

  //List
  List jurusan = [
    "Teknik Informatika",
    "Sistem Informasi",
    "DKV",
    semester.toString(),
    ipk.toString()
  ];

  print(jurusan);

  //Map
  Map<String, dynamic> kelas = {
    "nama": "beben",
    "kelas": "TI 2",
  };

  print(kelas);
  print(kelas['nama']);
  print(kelas['kelas']);

  //oprator
  int a, b;
  a = 9;
  b = 7;
  print("a = " + a.toString());
  print("b = " + b.toString());

  print({a + b});
  print({a - b});
  print({a / b});
  print({a = b});
  print({a > b});
  print({a < b});
  print({a >= b});
  print({a <= b});
}
