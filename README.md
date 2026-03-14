# Mini Projek 2 Pemograman Aplikasi Bergerak 

Nama : Zahra Aulia Rahmah

NIM : 2409116020

Sistem Informasi 2024

![Brown and White Bold Food Big Promo Billboard](https://github.com/user-attachments/assets/0e9aa5a0-83b4-46c6-b5e6-2599c749d264)

# 🦋 Deskripsi Aplikasi

MPHASE adalah aplikasi mobile berbasis Flutter yang dirancang untuk membantu perempuan dalam mencatat dan memantau siklus menstruasi secara sederhana dan praktis. Aplikasi ini memungkinkan pengguna untuk menyimpan informasi terkait periode seperti tanggal menstruasi, hari dalam siklus, gejala yang dirasakan, serta mood harian. MPHASE hadir dengan tampilan antarmuka yang bernuansa pink lembut dan feminin, dilengkapi dengan ikon dan elemen visual yang memberikan kesan ramah serta nyaman digunakan. Melalui aplikasi ini, pengguna dapat dengan mudah menambahkan, melihat, mengedit, dan menghapus catatan siklus menstruasi yang telah dibuat.

Setiap data yang dimasukkan akan ditampilkan dalam bentuk daftar catatan siklus, sehingga pengguna dapat melihat riwayat periode mereka dengan lebih terstruktur. Selain itu, aplikasi ini juga menyediakan fitur prediksi periode berikutnya, yang dihitung secara otomatis berdasarkan tanggal menstruasi terakhir yang dicatat oleh pengguna. Untuk pengelolaan data, MPHASE menggunakan database Supabase, sehingga data yang dimasukkan oleh pengguna dapat tersimpan dengan baik dan dapat diakses kembali selama pengguna menggunakan akun yang sama.Dengan fitur yang sederhana namun bermanfaat, MPHASE diharapkan dapat membantu pengguna dalam memantau kesehatan reproduksi dan memahami pola siklus menstruasi mereka dengan lebih mudah.

# Struktur File dan Project 

Struktur project yang saya gunakan mengikuti struktur standar dari Flutter. Oleh karena itu, di dalam project terdapat beberapa folder bawaan seperti android, ios, web, linux, macos, dan windows. Folder-folder ini otomatis dibuat oleh Flutter saat project dibuat dan digunakan untuk mendukung aplikasi agar dapat dijalankan di berbagai platform. Pada bagian ini saya tidak melakukan perubahan khusus karena lebih berfungsi untuk konfigurasi sistem aplikasi.

![image alt](https://github.com/zahraauliarahmah/MPHASE-PAB/blob/35b0a110d31400a3b7c8e9767ffa37e6935d238a/Cuplikan%20layar%202026-03-14%20151500.png)

Pada project ini, sebagian besar kode yang saya kerjakan terdapat di dalam folder lib. Folder ini merupakan bagian utama yang berisi seluruh kode aplikasi MPHASE. Di dalamnya terdapat beberapa folder seperti pages, services, dan themes, serta file main.dart. File main.dart merupakan file utama yang dijalankan pertama kali ketika aplikasi dibuka dan digunakan untuk mengatur konfigurasi awal aplikasi serta menentukan halaman pertama yang ditampilkan.

Folder pages berisi halaman-halaman utama aplikasi seperti login_page.dart, register_page.dart, cycle_list_service.dart, dan cycle_form_page.dart yang digunakan untuk menampilkan halaman login, registrasi, daftar data siklus menstruasi, serta form untuk menambahkan atau mengedit data.
Selanjutnya terdapat folder services yang berisi file cycle_service.dart yang digunakan untuk menghubungkan aplikasi dengan database Supabase, seperti mengambil, menambahkan, memperbarui, dan menghapus data.
Selain itu terdapat folder themes yang berisi file app_theme.dart yang digunakan untuk mengatur tampilan aplikasi seperti warna, light mode, dan dark mode.

<img width="277" height="301" alt="Image" src="https://github.com/user-attachments/assets/5078f529-3ca8-4dd4-b59b-0d067a0774cf" />

Selain folder kode program, terdapat juga file .env yang digunakan untuk menyimpan konfigurasi penting aplikasi seperti Supabase URL dan Supabase Anon Key. File ini digunakan agar informasi sensitif tidak dituliskan langsung di dalam kode program sehingga lebih aman.

<img width="268" height="40" alt="Image" src="https://github.com/user-attachments/assets/d66e0845-70f2-420e-8e2b-da808ded3631" />



# Fitur yang digunakan

Aplikasi MPHASE memiliki beberapa fitur utama yang dirancang untuk membantu pengguna dalam mencatat dan memantau siklus menstruasi secara sederhana. Fitur-fitur tersebut meliputi autentikasi pengguna, pencatatan siklus menstruasi, manajemen data, serta pengaturan tampilan aplikasi.

## 1. Sistem Autentikasi Pengguna

Aplikasi dilengkapi dengan sistem autentikasi menggunakan Supabase Authentication yang memungkinkan pengguna memiliki akun pribadi.

Fitur autentikasi yang tersedia antara lain:

  Register Akun

Pengguna dapat membuat akun baru dengan mengisi beberapa data seperti: Nama, Email, Password, Umur, Panjang siklus menstruasi, Lama menstruasi, Tanggal haid terakhir

Setelah registrasi berhasil, pengguna dapat login menggunakan akun yang telah dibuat.

  Login Akun

Pengguna dapat masuk ke dalam aplikasi menggunakan:

Email dan Password

Autentikasi ini dilakukan menggunakan layanan Supabase Auth.

 ## 2. Pencatatan Siklus Menstruasi

Fitur utama dari aplikasi MPHASE adalah memungkinkan pengguna untuk mencatat data terkait siklus menstruasi.

Data yang dapat dicatat meliputi: Tanggal menstruasi, Hari dalam siklus, Gejala yang dirasakan, Mood pengguna, Pengguna dapat memasukkan data tersebut melalui halaman Cycle Form Page.

## 3. Melihat Riwayat Siklus

Setelah data dimasukkan, aplikasi akan menampilkan semua catatan siklus menstruasi dalam bentuk daftar (list).

Setiap catatan akan menampilkan informasi seperti: tanggal menstruasi, hari dalam siklus, mood, gejala

Data tersebut ditampilkan menggunakan ListView dengan Card agar lebih mudah dibaca.

## 4. Edit Data Siklus

Aplikasi menyediakan fitur edit data, sehingga pengguna dapat memperbarui catatan siklus yang sudah dibuat sebelumnya.

Fitur ini memungkinkan pengguna untuk mengubah: tanggal, hari dalam siklus, mood, gejala

Edit data dilakukan melalui ikon pensil (edit icon) pada setiap catatan.

## 5. Hapus Data Siklus

Pengguna juga dapat menghapus data siklus yang tidak diperlukan.

Fitur ini tersedia melalui ikon delete (trash icon) pada setiap catatan siklus.

Setelah data dihapus, daftar data akan langsung diperbarui.

## 6. Menambahkan Data Baru

Aplikasi menyediakan Floating Action Button (+) di bagian bawah halaman utama yang digunakan untuk menambahkan catatan siklus baru.

Ketika tombol ditekan, pengguna akan diarahkan ke halaman Cycle Form Page untuk mengisi data siklus menstruasi.

## 7. Dark Mode dan Light Mode

MPHASE menyediakan dua mode tampilan yaitu:

Light Mode

Mode tampilan utama dengan warna: pink lembut,background terang, desain feminin

Dark Mode

Mode tampilan gelap dengan nuansa:, pink tua, background lebih gelap, tetap mempertahankan tema feminin

Mode ini dapat diubah melalui ikon dark mode di halaman login.

## 8. Penyimpanan Data Menggunakan Supabase

Aplikasi menggunakan Supabase Database untuk menyimpan semua data pengguna.

Data yang tersimpan antara lain: user_id, tanggal menstruasi, hari dalam siklus, gejala, mood

Setiap pengguna hanya dapat melihat data miliknya sendiri karena data difilter menggunakan user_id.

## 9. Tampilan UI yang Responsif

Aplikasi dirancang dengan tampilan yang sederhana dan mudah digunakan dengan elemen UI seperti: Card, ListTile, Dropdown menu, Date picker, Form input, Floating action button

Tampilan aplikasi juga menggunakan tema pink lembut yang memberikan kesan feminin dan nyaman bagi pengguna.

## 10. Navigasi Antar Halaman

Aplikasi menggunakan sistem Navigator untuk berpindah antar halaman, seperti:

Login Page → Cycle List Page, Cycle List Page → Cycle Form Page, Login Page → Register Page

Navigasi ini memungkinkan alur penggunaan aplikasi menjadi lebih jelas dan mudah digunakan.

# Teknologi yang digunakan 

1. Flutter
Flutter merupakan framework utama yang saya gunakan untuk membangun aplikasi MPHASE. Flutter digunakan untuk membuat tampilan antarmuka aplikasi (User Interface) seperti halaman login, halaman registrasi, daftar data siklus, serta form input data. Dengan Flutter, aplikasi dapat dijalankan di berbagai platform seperti Android, Web, dan Desktop.

2. Dart
Dart merupakan bahasa pemrograman yang digunakan dalam pengembangan aplikasi ini. Seluruh logika program seperti navigasi halaman, pengolahan data, serta interaksi dengan database ditulis menggunakan bahasa Dart.

3. Supabase
Supabase digunakan sebagai backend dan database pada aplikasi MPHASE. Supabase berfungsi untuk menyimpan data siklus menstruasi pengguna, seperti tanggal, hari siklus, gejala, dan mood. Selain itu Supabase juga digunakan untuk sistem autentikasi pengguna seperti login dan registrasi akun.

4. Flutter Dotenv (.env)
Package flutter_dotenv digunakan untuk membaca file konfigurasi .env. File ini digunakan untuk menyimpan informasi penting seperti Supabase URL dan Supabase Anon Key agar data sensitif tidak dituliskan langsung di dalam source code aplikasi.

5. Google Fonts
Google Fonts digunakan untuk mendukung tampilan teks pada aplikasi agar terlihat lebih menarik dan sesuai dengan desain aplikasi yang menggunakan tema feminin dengan nuansa warna pink.

6. GitHub
GitHub digunakan sebagai tempat untuk menyimpan dan mengelola source code project MPHASE secara online. Dengan menggunakan GitHub, proses pengembangan aplikasi menjadi lebih terorganisir serta memudahkan dalam melakukan backup dan dokumentasi project.

# Struktur Database

<img width="1006" height="586" alt="Image" src="https://github.com/user-attachments/assets/de95d875-710b-4449-a1a8-8049a9962e43" />

1. id (int8)
Kolom ini digunakan sebagai ID unik untuk setiap data siklus menstruasi yang disimpan di database. Nilai pada kolom ini berfungsi untuk membedakan setiap data yang dimasukkan oleh pengguna serta digunakan saat proses update dan delete data.

2. tanggal (date)
Kolom ini digunakan untuk menyimpan tanggal menstruasi yang dimasukkan oleh pengguna. Data ini diambil dari input tanggal pada form aplikasi ketika pengguna mencatat siklus menstruasi.

3. hari (text)
Kolom ini digunakan untuk menyimpan hari dalam siklus menstruasi, misalnya Day 1, Day 2, dan seterusnya. Informasi ini membantu pengguna mengetahui posisi hari dalam siklus menstruasi yang sedang dicatat.

4. gejala (text)
Kolom ini digunakan untuk menyimpan gejala yang dirasakan oleh pengguna selama menstruasi, seperti kram, lelah, atau gejala lainnya yang dimasukkan pada form aplikasi.

5. mood (text)
Kolom ini digunakan untuk menyimpan mood atau kondisi perasaan pengguna pada saat mencatat siklus menstruasi, seperti happy, sad, tired, dan sebagainya.

6. user_id (uuid)
Kolom ini digunakan untuk menyimpan ID pengguna yang sedang login. Kolom ini berfungsi untuk menghubungkan data siklus menstruasi dengan akun pengguna tertentu sehingga setiap pengguna hanya dapat melihat data miliknya sendiri.

# Widget yang digunakan 

1. MaterialApp

Widget ini digunakan sebagai root dari aplikasi Flutter. Pada project MPHASE, MaterialApp digunakan untuk mengatur konfigurasi utama aplikasi seperti theme, judul aplikasi, serta halaman awal yang akan ditampilkan.

2. Scaffold

Scaffold digunakan sebagai struktur dasar halaman dalam aplikasi. Widget ini menyediakan komponen seperti AppBar, Body, dan FloatingActionButton yang digunakan pada hampir semua halaman seperti login, register, dan halaman daftar siklus.

3. AppBar

AppBar digunakan untuk menampilkan bagian header pada halaman aplikasi. Pada aplikasi MPHASE, AppBar digunakan untuk menampilkan judul halaman serta tombol dark mode.

4. TextField

TextField digunakan untuk menerima input dari pengguna. Widget ini digunakan pada halaman login, register, dan form siklus menstruasi untuk mengisi data seperti email, password, gejala, dan informasi lainnya.

5. ElevatedButton

ElevatedButton digunakan sebagai tombol interaksi utama dalam aplikasi. Widget ini digunakan untuk berbagai aksi seperti login, register, memilih tanggal, serta menyimpan data siklus menstruasi.

6. Text

Widget Text digunakan untuk menampilkan teks atau informasi dalam aplikasi seperti judul halaman, deskripsi aplikasi, label input, dan informasi lainnya.

7. ListView.builder

ListView.builder digunakan untuk menampilkan daftar data secara dinamis. Pada aplikasi MPHASE, widget ini digunakan untuk menampilkan daftar catatan siklus menstruasi yang diambil dari database Supabase.

8. Card

Card digunakan untuk menampilkan setiap data siklus dalam bentuk kartu agar tampilannya lebih rapi dan mudah dibaca.

9. ListTile

ListTile digunakan di dalam Card untuk menampilkan informasi data siklus seperti tanggal, hari, mood, dan gejala serta menampilkan ikon edit dan delete.

10. Icon dan IconButton

Widget ini digunakan untuk menampilkan ikon interaktif dalam aplikasi seperti ikon favorite, edit, delete, dan dark mode.

11. DropdownButtonFormField

Widget ini digunakan untuk membuat dropdown pilihan pada form input. Pada aplikasi MPHASE, dropdown digunakan untuk memilih hari dalam siklus dan mood pengguna.

12. FloatingActionButton

FloatingActionButton digunakan untuk menampilkan tombol tambah data yang berada di bagian bawah halaman utama. Tombol ini digunakan untuk membuka halaman form input siklus baru.

13. Navigator

Navigator digunakan untuk mengatur perpindahan halaman dalam aplikasi, seperti berpindah dari halaman login ke halaman daftar siklus atau dari halaman daftar ke halaman form input.

14. SnackBar

SnackBar digunakan untuk menampilkan notifikasi singkat kepada pengguna, seperti pesan bahwa data berhasil disimpan atau data berhasil dihapus.

# Aplikasi Mphase

