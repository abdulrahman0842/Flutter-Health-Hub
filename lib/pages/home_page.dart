import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_hub/models/hospital_model.dart';
import 'package:health_hub/widgets/hospital_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Hospital>> _loadHospitals;

  @override
  void initState() {
    super.initState();
    _loadHospitals = fetchHospitals();
  }

  Future<List<Hospital>> fetchHospitals() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/data/hospital.json');
      List<dynamic> jsonList = json.decode(jsonString);
      List<Hospital> hospitals = jsonList
          .where((json) => json != null)
          .map((json) => Hospital.fromJson(json))
          .toList();
      print(hospitals.length);
      return hospitals;
    } catch (e) {
      print('Error Loading Json Data: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8F6EE),
        appBar: AppBar(
          title: const Text(
            'Health Hub',
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Hospital>>(
          future: _loadHospitals,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return const HospitalList();
            }
          },
        ));
  }
}
