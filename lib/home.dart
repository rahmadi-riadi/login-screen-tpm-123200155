import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';


class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> _anggota = [
    {
      'nama': 'Rahmadi Riadi Priambudi',
      'nim': '123200155',
      'foto': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuMaJh-qEQlE1R_9eqGSCnHPc65aWOc2ZE3g&usqp=CAU',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('anggota'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: _anggota.length,
        itemBuilder: (context, index) {
          final anggota = _anggota[index];
          return Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(anggota['foto'] ?? ''),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    anggota['nama'] ?? '',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    anggota['nim'] ?? '',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
