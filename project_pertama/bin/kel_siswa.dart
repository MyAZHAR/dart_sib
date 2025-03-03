void main(){
  String studentName = "budi";
  int studentAge = 16;
  double exampScore = 85.75;
  bool isPassed = exampScore >= 75;
  var subject = ["Matematika","Fisika","B.Inggris"];
  const double passingGrade = 75.0;
  final Set<String> uniqueSubjects = {"Matematika","Fisika","B.Inggris"};
  double averageScore = (exampScore + 90.0 + 78.5)/3;
  print("Nama Siswa      : $studentName");
  print("Umur            : $studentAge");
  print("Nilai Ujian     : $exampScore");
  print("Status          : ${isPassed ? 'lulus' : 'Gagal'}");
  print("Subject         : $subject");
  print("Rata-rata Nilai : $averageScore");
  print("Unique Subject  : $uniqueSubjects");
  print("Grade           : $passingGrade");
}