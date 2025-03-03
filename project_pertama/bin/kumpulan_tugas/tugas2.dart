void main() {
  // 1. Gunakan List untuk menyimpan daftar mahasiswa dengan minimal 5 nama.
  List<String> mahasiswa = ['Epul', 'Sintia', 'Obet', 'Bekham', 'Ity'];




  // 2. Gunakan Map untuk menyimpan data mahasiswa.
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    'Epul': {
      'NIM': '011022375',
      'Mata Kuliah': ['Matematika', 'Fisika']
    },
    'Sintia': {
      'NIM': '011022151',
      'Mata Kuliah': ['Kimia', 'Biologi']
    },
    'Obet': {
      'NIM': '0110222294',
      'Mata Kuliah': ['Matematika', 'Sejarah']
    },
    'Bekham': {
      'NIM': '011022116',
      'Mata Kuliah': ['Fisika', 'Kimia']
    },
    'Ity': {
      'NIM': '011022265',
      'Mata Kuliah': ['Biologi', 'Sejarah']
    }
  };

  // 3. Tambahkan satu mahasiswa baru beserta NIM dan daftar mata kuliahnya.
  mahasiswa.add('Daboh');
  dataMahasiswa['Daboh'] = {
    'NIM': '0110222252',
    'Mata Kuliah': ['Matematika', 'Kimia']
  };

  // 4. Hapus satu mahasiswa dari daftar.
  mahasiswa.remove('Ity');
  dataMahasiswa.remove('Ity');

  // 5. Tampilkan daftar mahasiswa beserta NIM dan mata kuliahnya setelah perubahan.
  print('Daftar Mahasiswa:');
  for (var nama in mahasiswa) {
    print('Nama: $nama');
    print('NIM: ${dataMahasiswa[nama]!['NIM']}');
    print('Mata Kuliah: ${dataMahasiswa[nama]!['Mata Kuliah'].join(', ')}');
    print('---');
  }
}