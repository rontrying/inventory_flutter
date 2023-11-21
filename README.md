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

 **`Navigator.push()`**
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

 **`Navigator.pushReplacement()`**
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
- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut: <br>
        <br>
         - Pada folder lib buatlah file dengan nama itemlist_form.dart <br>
         
    - [x] Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat. <br>
          - Pada file tersebut tambahkan kode dibawah ini <br>
        ```dart
        import 'package:flutter/material.dart';
        import 'package:inventory_flutter/widgets/left_drawer.dart';
        
        class InventoryFormPage extends StatefulWidget {
            const InventoryFormPage({super.key});
        
            @override
            State<InventoryFormPage> createState() => _InventoryFormPageState();
        }
        
        class _InventoryFormPageState extends State<InventoryFormPage> {
            final _formKey = GlobalKey<FormState>();
            String _name = "";
            int _amount = 0;
            String _description = "";
            String _rarity = "";
        
            @override
            Widget build(BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Center(
                      child: Text(
                        'Form Tambah Item',
                      ),
                    ),
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                  ),
                  drawer: const LeftDrawer(),
                  body: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Nama Item",
                                labelText: "Nama Item",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _name = value!;
                                });
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return "Nama tidak boleh kosong!";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Jumlah",
                                labelText: "Jumlah",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _amount = int.parse(value!);
                                });
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return "Jumlah tidak boleh kosong!";
                                }
                                if (int.tryParse(value) == null) {
                                  return "Jumlah harus berupa angka!";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Deskripsi",
                                labelText: "Deskripsi",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _description = value!;
                                });
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return "Deskripsi tidak boleh kosong!";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Deskripsi",
                                labelText: "Deskripsi",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _rarity = value!;
                                });
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return "Rarity tidak boleh kosong!";
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                );
            }
        }
        ```
    - [x] Memiliki sebuah tombol Save. <br>
        - Lalu buatlah sebuah child dari Column. Bungkus tombol ke widget Padding dan Align. Berikut kodenya: <br>
        ```dart
          Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.indigo),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Item berhasil tersimpan'),
                        content: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text('Nama: $_name'),
                              Text('Jumlah: $_amount'),
                              Text('Deskripsi: $_description'),
                              Text('Rarity: $_rarity'),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                _formKey.currentState!.reset();
                }
              },
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        ```
    - [x] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut: <br>
        - [x] Setiap elemen input tidak boleh kosong. <br>
        - [x] Setiap elemen input harus berisi data dengan tipe data atribut modelnya.<br>
            Setiap meminta input String pada form saya membuat validator seperti kode berikut: <br>
            ```dart
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Nama tidak boleh kosong!";
              }
              return null;
            },
            ```
            Setiap meminta input integer pada form saya membuat validator seperti kode berikut: <br>
            ```dart
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Jumlah tidak boleh kosong!";
              }
              if (int.tryParse(value) == null) {
                return "Jumlah harus berupa angka!";
              }
              return null;
            },
            ```
    - [x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.<br>
        - Pada card yang terdapat pada halaman utama saya menambahkan Navigator untuk push page InventoryFormPage ke stack. Berikut kodenya: <br>
        ```dart
          if (item.name == "Tambah Item") {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InventoryFormPage(),
          ));
        }
        ```
    - [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.<br>
        - Tambahkan fungsi showDialog() pada bagian onPressed() dan munculkan widget AlertDialog pada fungsi tersebut. Pada widget tambahkan child berupa widget Column yang berisi children dengan widget Text untuk menampilkan data-data yang sesuai. Kemudian, tambahkan juga fungsi untuk reset form. Berikut kodenya: <br>
          ```dart
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Item berhasil tersimpan'),
                      content: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text('Nama: $_name'),
                            Text('Jumlah: $_amount'),
                            Text('Deskripsi: $_description'),
                            Text('Rarity: $_rarity'),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              _formKey.currentState!.reset();
              }
            },
          ```
    - [x] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut: <br>
        - Pada folder lib buatlah folder widgets yang bernama left_drawer.dart. Lalu tambahkan kode berikut:<br>
        ```dart
        import 'package:flutter/material.dart';
        import 'package:inventory_flutter/screens/itemlist_form.dart';
        import 'package:inventory_flutter/screens/menu.dart';
        
        
        class LeftDrawer extends StatelessWidget {
          const LeftDrawer({super.key});
        
          @override
          Widget build(BuildContext context) {
            return Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Inventory management ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Catat seluruh keperluan di sini!",
                                style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                              ),
                            ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Halaman Utama'),
                    // Bagian redirection ke MyHomePage
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.add_shopping_cart),
                    title: const Text('Tambah Item'),
                    // Bagian redirection ke ItemFormPage
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InventoryFormPage(),
                          ));
                    },
                  ),
                ],
              ),
            );
          }
        }
        ```
        - [x] Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item. <br>
            - Saya menambahkan ListView berisi ListTile yang dimana disini akan digunakan untuk menampilkan secara berurut opsi untuk ke Halaman Utama dan Tambah Item. Berikut kodenya di dalam ListView:<br>
              ```dart
                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Halaman Utama'),
                  // Bagian redirection ke MyHomePage
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.add_shopping_cart),
                  title: const Text('Tambah Item'),
                  // Bagian redirection ke ItemFormPage
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InventoryFormPage(),
                        ));
                  },
                ),
              ```
        - [x]  Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama. <br>
            - Pada widget ListTile 'Halaman Utama' saya menambahkan Navigator.pushReplacement didalam fungsi onTap yang berarti saat ditekan akan menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan route ke Halaman Utama. Berikut kodenya: <br>
            ```dart
            onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ));
            },
            ```
        - [x] Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru. <br>
            - Pada widget ListTile 'Tambah Item' saya menambahkan Navigator.pushReplacement didalam fungsi onTap yang berarti saat ditekan akan menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan route ke form tambah item baru. Berikut kodenya: <br>
            ```dart
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InventoryFormPage(),
                  ));
            },
            ```



Tugas 9
1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu di Django. Dalam beberapa kasus, terutama ketika kita hanya perlu melakukan pengambilan data tanpa perlu menyimpannya dalam database atau melakukan operasi CRUD (Create, Read, Update, Delete), ini bisa menjadi pilihan yang memudahkan.

Namun, perlu diingat bahwa membuat model di Django memberikan struktur dan validasi data yang terorganisir. Jika kita berencana untuk menyimpan data atau melakukan operasi terstruktur lainnya, membuat model biasanya merupakan pendekatan yang lebih baik. Model memungkinkan kita mendefinisikan aturan validasi, jenis data, dan hubungan antar entitas data.

Keuntungan membuat model meliputi:

Validasi Data: Model memungkinkan kita mendefinisikan aturan validasi untuk memastikan bahwa data yang disimpan sesuai dengan format yang diharapkan.

ORM (Object-Relational Mapping): Django menyediakan ORM yang memudahkan pengaksesan dan manipulasi data dalam database menggunakan objek Python, sehingga mengurangi kebutuhan untuk menulis SQL langsung.

Relasi Antar Tabel: Jika data kita memiliki relasi antar tabel, membuat model memungkinkan kita mendefinisikan relasi tersebut dengan mudah.

Jika kita hanya membutuhkan pengambilan data sederhana tanpa menyimpannya dan tidak memerlukan validasi yang kompleks, menggunakan Python untuk mengambil dan memanipulasi data JSON tanpa membuat model bisa menjadi pilihan yang lebih ringan.

Jadi, keputusan untuk membuat model atau tidak tergantung pada kebutuhan proyek kita. Jika proyek kita sederhana dan tidak memerlukan struktur data yang kompleks, bisa lebih mudah tanpa model. Namun, jika kita berencana untuk menyimpan atau memanipulasi data dengan lebih banyak fitur, membuat model dapat memberikan manfaat tambahan.


2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` adalah kelas yang berfungsi untuk mengirim permintaan HTTP sambil membawa informasi cookie. Saat permintaan HTTP dikirim, cookie dapat dimasukkan ke dalamnya. Ini memungkinkan server untuk mengenali pengguna yang telah terautentikasi dan menyimpan data sesi pengguna.

Penting untuk membagikan instance `CookieRequest` ke seluruh komponen dalam aplikasi Flutter. Hal ini memastikan bahwa setiap komponen dapat mengakses cookie yang sama. Dengan cara ini, informasi tentang pengguna yang telah terautentikasi dan sesi pengguna dapat diakses secara konsisten di seluruh aplikasi. Fitur ini sangat vital dalam aplikasi yang memerlukan otentikasi pengguna, seperti aplikasi perbankan atau aplikasi media sosial.

Dengan membagikan instance `CookieRequest`, setiap komponen memiliki akses ke data yang sama, memungkinkan aplikasi berinteraksi dengan server secara kohesif dan menyediakan pengalaman pengguna yang lancar dan aman.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Proses pengambilan data dari JSON hingga ditampilkan pada Flutter melibatkan beberapa langkah umum. Berikut adalah langkah-langkah umumnya:

1. **Pengambilan Data dari API:**
   - Lakukan permintaan HTTP ke API yang menyediakan data dalam format JSON. Ini bisa dilakukan dengan menggunakan paket HTTP seperti `http` atau `dio`.

     Contoh menggunakan paket `http`:
     ```dart
     import 'dart:convert';
     import 'package:http/http.dart' as http;

     Future<Map<String, dynamic>> fetchData() async {
       final response = await http.get('https://example.com/api/data');
       if (response.statusCode == 200) {
         return json.decode(response.body);
       } else {
         throw Exception('Failed to load data');
       }
     }
     ```

2. **Deserialisasi JSON:**
   - Gunakan metode deserialisasi untuk mengonversi data JSON menjadi objek Dart. Anda bisa menggunakan `json.decode` atau paket-paket yang menyediakan deserialisasi otomatis, seperti `json_serializable` atau `built_value`.

     Contoh deserialisasi menggunakan `json_serializable`:
     ```dart
     import 'package:json_annotation/json_annotation.dart';

     part 'data_model.g.dart';

     @JsonSerializable()
     class DataModel {
       String name;
       int age;

       DataModel({required this.name, required this.age});

       factory DataModel.fromJson(Map<String, dynamic> json) =>
           _$DataModelFromJson(json);

       Map<String, dynamic> toJson() => _$DataModelToJson(this);
     }
     ```

3. **Pemrosesan dan Penyimpanan Data:**
   - Lakukan pemrosesan data yang diperoleh sesuai dengan kebutuhan aplikasi. Ini dapat mencakup pengubahan format, pengelompokan data, atau penyimpanan dalam struktur data yang sesuai (seperti daftar atau objek).

     ```dart
     List<DataModel> processData(Map<String, dynamic> jsonData) {
       List<dynamic> rawList = jsonData['data'];
       return rawList.map((item) => DataModel.fromJson(item)).toList();
     }
     ```

4. **Tampilkan Data dalam Widget Flutter:**
   - Gunakan data yang telah diproses untuk membangun widget Flutter. Ini bisa menjadi daftar, kartu, atau widget lainnya yang sesuai dengan tampilan yang Anda inginkan.

     ```dart
     import 'package:flutter/material.dart';

     class DataListWidget extends StatelessWidget {
       final List<DataModel> dataList;

       DataListWidget(this.dataList);

       @override
       Widget build(BuildContext context) {
         return ListView.builder(
           itemCount: dataList.length,
           itemBuilder: (context, index) {
             return ListTile(
               title: Text(dataList[index].name),
               subtitle: Text('Age: ${dataList[index].age}'),
             );
           },
         );
       }
     }
     ```

5. **Pembaruan Tampilan:**
   - Saat data berubah (misalnya setelah menerima respons dari API), pastikan untuk memanggil metode `setState` atau menggunakan state management untuk memicu pembaruan tampilan.

     ```dart
     Future<void> fetchDataAndRefresh() async {
       final data = await fetchData();
       final processedData = processData(data);
       setState(() {
         dataList = processedData;
       });
     }
     ```
4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Pada dasarnya, proses autentikasi dari input data akun pada Flutter hingga selesainya proses autentikasi oleh Django melibatkan beberapa langkah penting.

Pertama, pengguna memasukkan informasi akun seperti email dan kata sandi melalui antarmuka Flutter. Data ini kemudian dikirim ke server Django menggunakan permintaan HTTP, khususnya metode POST. Di sisi Django, ada sebuah API view yang dirancang untuk menangani permintaan ini. API view ini bertugas memvalidasi dan memproses data masukan dari Flutter.

Kemudian, Django akan mengambil alih untuk melakukan autentikasi. Server Django memeriksa apakah kombinasi email dan kata sandi yang diterima dari Flutter valid atau tidak. Jika valid, Django akan menghasilkan token akses, yang selanjutnya dikirimkan kembali ke Flutter sebagai respons dari permintaan autentikasi.

Selanjutnya, di aplikasi Flutter, kita menyimpan token akses ini secara lokal. Ini bisa dilakukan menggunakan mekanisme penyimpanan aman seperti shared preferences atau secure storage di Flutter. Token akses ini sangat penting karena akan digunakan untuk mengidentifikasi pengguna yang telah terautentikasi pada permintaan selanjutnya.

Dengan token ini, Flutter dapat mengelola tampilan aplikasi berdasarkan status autentikasi. Misalnya, setelah berhasil masuk, aplikasi Flutter dapat menampilkan menu atau halaman yang berbeda, memberikan akses ke fitur-fitur seperti profil pengguna, pengaturan, atau konten eksklusif. Ini menciptakan pengalaman pengguna yang lebih personal dan terkait dengan status autentikasi mereka.

5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
Container: Digunakan untuk mengelilingi widget lain dan memberikan padding, margin, dan dekorasi.

Row dan Column: Ideal untuk menyusun widget secara berurutan di satu arah (baris atau kolom).

ListView: Digunakan untuk item dan ingin memungkinkan pengguna untuk menggulir melalui daftar tersebut.

SizedBox: Digunakan untuk memberikan spasi antara widget atau untuk memberikan batas di sekitar widget tertentu.

Text: Digunakan untuk menampilkan teks di aplikasi.

Align: Berguna untuk mengatur posisi widget di dalam parentnya.

Drawer: Digunakan untuk menampilkan menu navigasi.

ElevatedButton: Digunakan untuk membuat tombol dengan tampilan yang lebih menarik.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
  - Pada folder screens, buatlah file baru bernama login.dart untuk halaman login. Tambahkan widget dibawah ini:
  ```dart
    Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;

                // Cek kredensial
                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                // Untuk menyambungkan Android emulator dengan Django pada localhost,
                // gunakan URL http://10.0.2.2/
                final response =
                    await request.login("http://127.0.0.1:8000/auth/login/", {
                  'username': username,
                  'password': password,
                });

                if (request.loggedIn) {
                  String message = response['message'];
                  String uname = response['username'];
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("$message Selamat datang, $uname.")));
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Login Gagal'),
                      content: Text(response['message']),
                      actions: [
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
  ```
  - Untuk autentikasi django dengan flutter, setup autentikasi dulu pada django dengan membuat app baru bernama authentication untuk menambahkan logika login dan logout serta routing ke django dari flutter.

  - Pada project flutter main.dart, tambahkan kode berikut untuk menginisiasi CookieRequest:
  ```dart
  create: (_) {
              CookieRequest request = CookieRequest();
              return request;
  },
  ```

  - Untuk menyesuaikan model yang ada pada django, gunakan quicktype untuk menghasilkan model yang sesuai dengan model yang ada pada django. Kemudian, buat file baru bernama products.dart pada folder models untuk menyimpan model yang telah dibuat.
  - Buat file baru list_product.dart pada screens untuk halaman list product. Pertama-tama, tambahkan class ini terlebih dahulu:
  ```dart
  class _ProductPageState extends State<ProductPage> {
  Future<List<Product>> fetchProduct() async {
      // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
      var url = Uri.parse(
          'http://localhost:8000/json/');
      var response = await http.get(
          url,
          headers: {"Content-Type": "application/json"},
      );

      // melakukan decode response menjadi bentuk json
      var data = jsonDecode(utf8.decode(response.bodyBytes));

      // melakukan konversi data json menjadi object Product
      List<Product> list_product = [];
      for (var d in data) {
          if (d != null) {
              list_product.add(Product.fromJson(d));
          }
      }
      return list_product;
  }
  ```
  - Setelah itu, tambahkan widget dengan kode dibawah ini:
  ```dart
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
      title: const Text(
        'Products Page',
      ),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white,
    ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
          future: fetchProduct(),
          builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                  return const Center(child: CircularProgressIndicator());
              } else {
                  if (!snapshot.hasData) {
                  return const Column(
                      children: [
                      Text(
                          "Tidak ada data produk.",
                          style:
                              TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                      ],
                  );
              } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Text(
                                  "${snapshot.data![index].fields.name}",
                                  style: const TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text("${snapshot.data![index].fields.description}"),
                                  const SizedBox(height: 5),
                                  Text("Amount: ${snapshot.data![index].fields.amount}"),
                                  const SizedBox(height: 10),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => DetailsPage(item: snapshot.data![index],),
                                      ));
                                  }, 
                                  child: Text("See Details"))
                              ],
                              ),
                          ));
                  }
              }
          }));
  }
  ```
  - Untuk menampilkan detail product, buat file baru bernama one_item.dart pada folder screens. Tambah widget dengan kode dibawah ini:
  ```dart
  import 'package:flutter/material.dart';
  import 'package:inventory_flutter/models/item.dart';

  class DetailsPage extends StatelessWidget {
    final Item item;

    DetailsPage({required this.item});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Details Page',
          ),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${item.fields.name}",
                style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text("Deskripsi: ${item.fields.description}"),
              const SizedBox(height: 5),
              Text("Amount: ${item.fields.amount}"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back'),
              ),
            ],
          ),
        ),
      );
    }
  }
  ```