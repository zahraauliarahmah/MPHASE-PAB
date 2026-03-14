# Mini Projek 2 Pemograman Aplikasi Bergerak 

Nama : Zahra Aulia Rahmah

NIM : 2409116020

Sistem Informasi 2024

![Brown and White Bold Food Big Promo Billboard](https://github.com/user-attachments/assets/0e9aa5a0-83b4-46c6-b5e6-2599c749d264)

# 🦋 Deskripsi Aplikasi

MPHASE adalah aplikasi mobile berbasis Flutter yang dirancang untuk membantu perempuan dalam mencatat dan memantau siklus menstruasi secara sederhana dan praktis. Aplikasi ini memungkinkan pengguna untuk menyimpan informasi terkait periode seperti tanggal menstruasi, hari dalam siklus, gejala yang dirasakan, serta mood harian. MPHASE hadir dengan tampilan antarmuka yang bernuansa pink lembut dan feminin, dilengkapi dengan ikon dan elemen visual yang memberikan kesan ramah serta nyaman digunakan. Melalui aplikasi ini, pengguna dapat dengan mudah menambahkan, melihat, mengedit, dan menghapus catatan siklus menstruasi yang telah dibuat.

Setiap data yang dimasukkan akan ditampilkan dalam bentuk daftar catatan siklus, sehingga pengguna dapat melihat riwayat periode mereka dengan lebih terstruktur. Selain itu, aplikasi ini juga menyediakan fitur prediksi periode berikutnya, yang dihitung secara otomatis berdasarkan tanggal menstruasi terakhir yang dicatat oleh pengguna. Untuk pengelolaan data, MPHASE menggunakan database Supabase, sehingga data yang dimasukkan oleh pengguna dapat tersimpan dengan baik dan dapat diakses kembali selama pengguna menggunakan akun yang sama.Dengan fitur yang sederhana namun bermanfaat, MPHASE diharapkan dapat membantu pengguna dalam memantau kesehatan reproduksi dan memahami pola siklus menstruasi mereka dengan lebih mudah.

# Struktur File dan Project 

![image alt](https://github.com/zahraauliarahmah/MPHASE-PAB/blob/35b0a110d31400a3b7c8e9767ffa37e6935d238a/Cuplikan%20layar%202026-03-14%20151500.png)

<img width="277" height="301" alt="Image" src="https://github.com/user-attachments/assets/5078f529-3ca8-4dd4-b59b-0d067a0774cf" />


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


