import 'package:flutter/material.dart';

class HospitalProfile extends StatefulWidget {
  const HospitalProfile({super.key, required this.hospital});
  final List hospital;

  @override
  State<HospitalProfile> createState() => _HospitalProfileState();
}

class _HospitalProfileState extends State<HospitalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.hospital[0],
          style: const TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        // width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HospitalHeaderWidget(hospitalHead: widget.hospital),
            HospitalContactWidget(hospitalName: widget.hospital)
          ],
        ),
      ),
    );
  }
}

class HospitalHeaderWidget extends StatelessWidget {
  const HospitalHeaderWidget({super.key, required this.hospitalHead});
  final List hospitalHead;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/hospital.jpg'),
          radius: 75,
        ),
        Text(
          hospitalHead[0],
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text(
          hospitalHead[2],
          style: const TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}

class HospitalContactWidget extends StatelessWidget {
  const HospitalContactWidget({super.key, required this.hospitalName});
  final List hospitalName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
            const Text(
              '7447885249',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.email_outlined)),
            Text(
              '${hospitalName[0]}@gmail.com',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.link)),
            Text(
              'www.${hospitalName[0]}.com',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}

class HospitalServices extends StatelessWidget {
  const HospitalServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}