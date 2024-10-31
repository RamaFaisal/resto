import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestoProfilePage(),
    );
  }
}

class RestoProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dadar Beredar'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(100),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/warung.jpg'),
                  ),
                  borderRadius:
                      BorderRadius.circular(8), // Sudut melengkung (opsional)
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  btnContact(Icons.email, Colors.blue),
                  SizedBox(width: 32),
                  btnContact(Icons.location_on, Colors.red),
                  SizedBox(width: 32),
                  btnContact(Icons.phone, Colors.green),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Deskripsi:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Dadar Beredar adalah usaha kuliner Babe Cabita yang berkolaborasi bersama King Abdi, jebolan musim ke-10 MasterChef Indonesia. King Abdi menceritakan awal pertemuannya dengan Babe Cabita ketika sedang makan sate klatak di Yogyakarta.Dadar Beredar menyajikan beraneka macam menu olahan yang terbuat dari telur.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'List Menu:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('- Nasi Telur Ceplok Binal Ayam Suwir: Rp21.364'),
                  Text('- Nasi Telur Ceplok Binal Tongkol: Rp21.364'),
                  Text('- Nasi Telur Ceplok Binal Cumi: Rp24.091'),
                  Text('- Nasi Telur Dadar Binal Ayam Suwir: Rp20.909'),
                  Text('- Nasi Telur Dadar Binal Tonglol: Rp20.909'),
                  Text('- Nasi Telur Dadar Binal Cumi: Rp23.636'),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Alamat:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Jl. Setia Budi No.66, Sumurboto, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50269',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Jam Buka:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Senin - Jumat : 10:30 - 22:00'),
                  Text('Sabtu - Minggu : 09:00 - 24:00'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget btnContact(IconData icon, var color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(icon),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(150, 50),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Sudut melengkung
          ),
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
