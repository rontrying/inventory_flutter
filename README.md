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

2. Sebutkan seluruh widget yang gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
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
4. Masuk ke direktori di proyek flutter-mu.
```cmd
flutter create inventory_flutter
cd inventory_flutter
flutter run
```

6. Merapikan Struktur Proyek

1. saya buat file baru bernama menu.dart pada direktori inventory_flutter/lib. Pada baris pertama file tersebut, tambahkan kode di bawah ini:
```dart
import 'package:flutter/material.dart';
```
2. pada file main.dart saya pindahkan kode baris ke-39 hingga akhir yang berisi kedua class di bawah ini:
3. kemudian pada main.dart saya tambahkan kode :
```dart
import 'package:inventory_flutter/menu.dart';
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


Tugas 8
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
`Navigator.push()` dan `Navigator.pushReplacement()` adalah dua metode navigasi yang berbeda dalam Flutter.

1. **`Navigator.push()`**
   - Metode ini digunakan untuk menambahkan rute baru ke tumpukan navigasi.
   - Rute sebelumnya tetap ada di tumpukan dan bisa kembali ke rute sebelumnya.

   Contoh penggunaan:
   ```dart
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => ProductListPage()),
   );
   ```

   Dalam contoh ini, `ProductListPage` ditambahkan ke tumpukan navigasi, dan pengguna dapat kembali ke rute sebelumnya.

2. **`Navigator.pushReplacement()`**
   - Metode ini digunakan untuk menambahkan rute baru ke tumpukan navigasi dan menggantikan rute saat ini dengan rute baru.
   - Rute sebelumnya dihapus dari tumpukan, sehingga pengguna tidak dapat kembali ke rute sebelumnya.

   Contoh penggunaan:
   ```dart
   Navigator.pushReplacement(
     context,
     MaterialPageRoute(builder: (context) => ProductListPage()),
   );
   ```

   Dalam contoh ini, `ProductListPage` ditambahkan ke tumpukan navigasi dan menggantikan rute saat ini. Pengguna tidak dapat kembali ke rute sebelumnya.

Pemilihan antara `Navigator.push()` dan `Navigator.pushReplacement()` tergantung pada kebutuhan aplikasi. Jika kita ingin pengguna bisa kembali ke rute sebelumnya, gunakan `Navigator.push()`. Namun, jika kita ingin menggantikan rute saat ini dengan yang baru (misalnya, setelah login), gunakan `Navigator.pushReplacement()`.

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Ada beberapa layout widget yang umum digunakan dalam Flutter untuk mengatur tata letak antar elemen dalam aplikasi. Berikut adalah beberapa layout widget utama beserta konteks penggunaannya:

**`Container`**
   - **Konteks Penggunaan:** `Container` adalah widget serbaguna yang dapat digunakan untuk mengatur tata letak dan penataan. Ini bisa berisi elemen-elemen lain seperti teks, gambar, atau widget lainnya. `Container` sering digunakan sebagai wadah untuk widget lainnya.

   Contoh:
   ```dart
   Container(
     width: 100.0,
     height: 100.0,
     color: Colors.blue,
     child: Text('Hello'),
   )
   ```

 **`Column`**
   - **Konteks Penggunaan:** `Column` mengatur widget secara vertikal dari atas ke bawah. Ini berguna saat ingin menata elemen secara vertikal, seperti daftar atau bagian-bagian vertikal di layar.

   Contoh:
   ```dart
   Column(
     children: [
       Text('Item 1'),
       Text('Item 2'),
       // ...
     ],
   )
   ```

 **`Row`**
   - **Konteks Penggunaan:** `Row` mengatur widget secara horizontal dari kiri ke kanan. Cocok digunakan untuk menyusun elemen secara horizontal.

   Contoh:
   ```dart
   Row(
     children: [
       Text('Left'),
       Text('Right'),
     ],
   )
   ```

 **`Stack`**
   - **Konteks Penggunaan:** `Stack` digunakan untuk menumpuk widget satu di atas yang lain. Ini berguna saat ingin menempatkan elemen-elemen di atas elemen lain.

   Contoh:
   ```dart
   Stack(
     children: [
       Image.network('url_to_image'),
       Positioned(
         bottom: 10.0,
         right: 10.0,
         child: Text('Overlay Text'),
       ),
     ],
   )
   ```

 **`ListView`**
   - **Konteks Penggunaan:** `ListView` digunakan untuk membuat daftar gulir vertikal atau horizontal. Ini sangat berguna ketika perlu menampilkan banyak item dalam sebuah daftar.

   Contoh:
   ```dart
   ListView(
     children: [
       ListTile(title: Text('Item 1')),
       ListTile(title: Text('Item 2')),
       // ...
     ],
   )
   ```

 **`GridView`**
   - **Konteks Penggunaan:** `GridView` menyusun widget dalam bentuk grid. Ini cocok digunakan untuk menampilkan elemen dalam grid atau tata letak berbasis grid.

   Contoh:
   ```dart
   GridView.builder(
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
     ),
     itemBuilder: (context, index) {
       return Card(
         child: Text('Item $index'),
       );
     },
   )
   ```

Itu adalah beberapa layout widget utama dalam Flutter beserta konteks penggunaannya. Pemilihan widget tergantung pada kebutuhan tata letak spesifik dalam aplikasi Flutter.

3. Sebutkan apa saja elemen input pada form yang saya pakai pada tugas kali ini dan jelaskan mengapa saya menggunakan elemen input tersebut!

Pada tugas kali ini, saya menggunakan tiga elemen input pada formulir Flutter, yaitu:

1. TextFormField untuk Nama Produk:
Penggunaan: Digunakan untuk mengambil input nama produk.
Penjelasan: Memberikan petunjuk visual (hint) dan label untuk memandu pengguna dalam mengisi nama produk. Menggunakan onChanged untuk mengupdate variabel _name dan validator untuk memastikan input tidak kosong.

2. TextFormField untuk Harga:
Penggunaan: Digunakan untuk mengambil input harga produk.
Penjelasan: Memberikan petunjuk visual dan label untuk memandu pengguna dalam mengisi harga produk. Menggunakan onChanged untuk mengupdate variabel _price dan validator untuk memastikan input tidak kosong dan merupakan angka.

3. TextFormField untuk Deskripsi:
Penggunaan: Digunakan untuk mengambil input deskripsi produk.
Penjelasan: Memberikan petunjuk visual dan label untuk memandu pengguna dalam mengisi deskripsi produk. Menggunakan onChanged untuk mengupdate variabel _description dan validator untuk memastikan input tidak kosong.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean Architecture adalah sebuah konsep desain perangkat lunak yang bertujuan untuk memisahkan dan mengorganisir kode menjadi lapisan-lapisan yang independen satu sama lain. Penerapan Clean Architecture pada aplikasi Flutter melibatkan penggunaan tiga lapisan utama: Presentasi (UI), Domain, dan Data.

Berikut adalah cara penerapan Clean Architecture pada aplikasi Flutter:

1. **Lapisan Presentasi (UI):**
   - **Widget Flutter:** Berisi UI dan logika tampilan. Widget-widget ini memanggil metode atau fungsi dari lapisan Domain untuk memproses data.
   - **Bloc/Provider:** Digunakan untuk mengelola keadaan (state) aplikasi dan logika bisnis. Bloc atau Provider dapat memanggil use case dari lapisan Domain.

2. **Lapisan Domain:**
   - **Use Cases (Interactors):** Berisi logika bisnis inti aplikasi. Use cases ini tidak bergantung pada Flutter dan bisa digunakan kembali di berbagai platform.
   - **Repositories (Interface):** Interface untuk mengakses data. Repositories mendefinisikan kontrak antarmuka untuk mengambil dan menyimpan data, tetapi implementasinya ada di lapisan Data.

3. **Lapisan Data:**
   - **Repositories (Implementasi):** Implementasi dari repository-repository yang didefinisikan di lapisan Domain. Repositories di sini bertanggung jawab untuk berinteraksi dengan sumber data eksternal, seperti API atau database lokal.
   - **Data Sources:** Bertanggung jawab langsung terhadap akses ke sumber data (API, database, dll.).

4. **Dependency Injection:**
   - Menggunakan Dependency Injection (DI) untuk menginjeksikan dependensi ke dalam kelas yang membutuhkannya. Flutter memiliki paket DI seperti `get_it` atau `provider` yang dapat digunakan untuk memfasilitasi injeksi dependensi.

5. **Unit Testing:**
   - Setiap lapisan dapat diuji secara terpisah. Use cases diuji di lapisan Domain, sementara UI dapat diuji menggunakan teknik seperti Widget testing atau Integration testing.

6. **DTO (Data Transfer Objects):**
   - Menggunakan DTO untuk mentransfer data antara lapisan Data dan lapisan Domain. Ini membantu menjaga keterpisahan antara kedua lapisan tersebut.

7. **Model:**
   - Model pada lapisan Domain harus bebas dari logika Flutter atau kode yang spesifik untuk platform tertentu.

8. **Exception Handling:**
   - Menangani exception pada setiap lapisan dengan baik. Contohnya, menyusun exception yang khusus untuk lapisan Domain dan mengonversinya ke exception yang lebih spesifik di lapisan Presentasi.

9. **Penerapan Clean Code:**
   - Memastikan bahwa setiap kelas dan fungsi mengikuti prinsip-prinsip Clean Code. Ini melibatkan penggunaan nama yang jelas, pembagian tugas yang baik, dan struktur kode yang bersih.

10. **Pemisahan Kode Platform-Spesifik:**
    - Mengisolasi kode yang bersifat platform-spesifik, misalnya kode yang berkaitan dengan API Flutter, ke dalam lapisan Presentasi atau Data yang sesuai.

Penerapan Clean Architecture pada aplikasi Flutter membantu mencapai tujuan utama: memisahkan kebijakan bisnis inti dari detail teknis dan eksternal, sehingga meningkatkan maintainability, testability, dan fleksibilitas aplikasi.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
- pertama tama saya membuat sebuah drawer yang saya atur bagian header dan routingnya yaitu pada drawer header dan routingnya pada ListTile
- selanjutnya saya hias drawer saya dan saya masukan dalam menu.dart
- kemudian saya buat shoplist_form
- saya tambahkan variabel yang dibutuhkan dan tambahkan form
