Nama : Bagus Wijoyoseno

NIM : H1D022030

Shift Baru: D

Ardicture

## Penjelasan
1. main.dart
    File ini adalah titik masuk aplikasi. Ini mengatur tema dan halaman awal aplikasi berdasarkan status login pengguna.

    Fungsi:
  - Menggunakan `FutureBuilder` untuk memeriksa status login saat aplikasi dimulai.
  - Menampilkan `LoginPage` jika pengguna belum masuk dan `HomePage` jika pengguna sudah masuk.

2. login_page.dart
    Halaman ini menyediakan antarmuka untuk pengguna melakukan login. Terdapat dua field input untuk username dan password.

    Fitur :
    - Menggunakan AnimatedTextKit untuk menampilkan teks animasi.
    - Memeriksa input pengguna dan menyimpan status login menggunakan SharedPreferences.

3. home_page.dart
    Ini adalah halaman utama yang ditampilkan setelah pengguna berhasil login.

4. side_menu.dart
    File ini mengatur menu samping (drawer) yang berisi navigasi ke halaman lain serta tombol logout.

    Fitur:
    - Menggunakan ListTile untuk membuat item menu.
    - Mengimplementasikan logika logout dengan menghapus status login dari SharedPreferences dan mengalihkan kembali ke LoginPage.

## Demo
[<video src='tugas3.gif'></video>](https://github.com/bagusws17/LabMobile3_BagusWijoyoseno_D/blob/main/tugas3.gif)
