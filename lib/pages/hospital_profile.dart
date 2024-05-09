import 'package:flutter/material.dart';

class HospitalProfile extends StatefulWidget {
  const HospitalProfile({super.key, required this.hospitalName});
  final List hospitalName;

  @override
  State<HospitalProfile> createState() => _HospitalProfileState();
}

class _HospitalProfileState extends State<HospitalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.hospitalName[0],
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.hospitalName[2],
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
              Text('Services Available:'),
              Text(' Ortho \n Surgeon \n Gynac \n Chest Physician \n ICU')
            ],
          ),
        ),
      ),
    );
  }
}
