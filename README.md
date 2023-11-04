# inventory_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Tugas 7
1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
perbedaan antara stateless dan stateful widget terletak pada kemampuan mereka untuk menyimpan dan merender informasi.

Stateless Widget:

Tidak dapat berubah setelah dibuat. Ini berarti bahwa propertinya tidak dapat diubah, dan widget ini tidak memiliki keadaan internal.
Berguna untuk bagian antarmuka pengguna yang tidak perlu diperbarui atau tidak bergantung pada perubahan data.
Stateful Widget:

Dapat mengubah propertinya selama masa hidupnya. Ini memungkinkan widget untuk merespons perubahan data dan dinamis.
Cocok untuk bagian antarmuka pengguna yang perlu diperbarui secara dinamis sesuai dengan perubahan dalam aplikasi.
Contoh sederhana: jika kita memiliki widget yang hanya menampilkan teks statis, kita mungkin akan menggunakan Stateless Widget. Tetapi jika kita memiliki widget yang perlu merespons input pengguna atau perubahan data, kita mungkin akan memilih Stateful Widget.

2. Sebutkan seluruh widget y gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Widget yang digunakan untuk menyelesaikan tugas ini adalah sebagai berikut:
    Scaffold: Membentuk dasar tata letak aplikasi, memberikan kerangka kerja untuk menyusun elemen antarmuka.
    AppBar: Mengelola navigasi dan tindakan dalam aplikasi, sering ditempatkan di bagian atas layar.
    Column: Menyusun child widget dalam satu kolom vertikal.
    Style: Menentukan penataan teks, seperti warna dan ukuran font, untuk memperindah antarmuka.
    Container: Berfungsi sebagai wadah untuk menyimpan dan mengelola widget lain, membantu dalam organisasi tata letak.
    Text: Digunakan untuk menampilkan teks dengan berbagai gaya dan format.
    Image: Menampilkan gambar dalam aplikasi.
    Icon: Menampilkan ikon dari kumpulan ikon yang telah disediakan oleh Flutter.
    Card: Mengelompokkan informasi terkait bersama dalam bentuk kartu, sering digunakan untuk presentasi data terstruktur.

3. pertama - tama saya menginstal flutter beserta app - app yang dibutuhkan dalam pengembangan
2. Buka Terminal atau Command Prompt.
3. Masuk ke direktori di proyek flutter-mu.
4. ```cmd
flutter create <APP_NAME>
cd <APP_NAME>
flutter run
```

5. Merapikan Struktur Proyek
1. saya buat file baru bernama menu.dart pada direktori inventory_flutter/lib. Pada baris pertama file tersebut, tambahkan kode di bawah ini:
```dart
import 'package:flutter/material.dart';
```
2. pada file main.dart saya pindahkan kode baris ke-39 hingga akhir yang berisi kedua class di bawah ini:
3. kemudian pada main.dart saya tambahkan kode :
```dart
import 'package:shopping_list/menu.dart';
```
4. kemudian saya mengubah warna theme dengan mengubah nilai seedcolor
```dart
colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
```
5. Pada file main.dart, hapus MyHomePage(title: 'Flutter Demo Home Page') sehingga menjadi:
```dart
MyHomePage()
```
6. Pada file menu.dart, saya akan mengubah sifat widget halaman dari stateful menjadi stateless. Lakukan perubahan pada bagian ({super.key, required this.title}) menjadi ({Key? key}) : super(key: key);. Hapus final String title; sampai bawah serta tambahkan Widget build sehingga kode terlihat seperti di bawah.
```dart
class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            ...
        );
    }
}
```
7. saya menambahkan teks dan card, dimulai dengan define tipe pada list.
```dart
class ShopItem {
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}
```
8. kemudian saya tambahkan barang barang yang dijual
```dart
final List<ShopItem> items = [
    ShopItem("Lihat Produk", Icons.checklist),
    ShopItem("Tambah Produk", Icons.add_shopping_cart),
    ShopItem("Logout", Icons.logout),
];
```

9. kemudian saya tambahkan kode di widget build dan membuat widget stateless baru untuk menampilkan card
