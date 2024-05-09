import 'package:flutter/material.dart';
import 'package:health_hub/widgets/hospital_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List _widgetOptions = [
  //   Text(
  //     'index 0: Hospital',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'index 1: Labs',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'index 2: Doctor',
  //     style: optionStyle,
  //   )
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6EE),
      appBar: AppBar(
        title: const Text(
          'Health Hub',
          style: TextStyle(fontSize: 25),
        ),
        
        backgroundColor: const Color(0xFFC0B9A4),
        centerTitle: true,
      ),
      body: Container(
        child: HospitalList(),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color.fromARGB(255, 92, 81, 47),
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.local_hospital), label: 'Hospital'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.medical_services), label: 'Labs'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.abc_outlined), label: 'Doctor')
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber,
      // ),
    );
  }
}
