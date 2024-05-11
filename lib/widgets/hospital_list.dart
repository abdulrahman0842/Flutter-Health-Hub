import 'package:flutter/material.dart';
import 'package:health_hub/pages/hospital_profile.dart';

class HospitalList extends StatelessWidget {
  const HospitalList({super.key});
  @override
  Widget build(BuildContext context) {
    var hospitalList = [
      ['Green Valley Clinic', 2, 'Oak Street'],
      ['Sunrise Medical Center', 3.5, 'Main Avenue'],
      ['Hope Hospital', 4, 'Elm Court'],
      ['Bright Health Clinic', 2, 'Pine Lane'],
      ['Healing Hands Hospital', 3, 'Cedar Avenue'],
      ['Golden Gate Clinic', 5, 'Maple Drive'],
      ['Eagle View Hospital', 4.5, 'River Road'],
      ['Unity Medical Center', 3, 'Sunset Boulevard'],
      ['Rainbow Healthcare', 2.5, 'Park Avenue'],
      ['Serene Wellness Center', 4, 'Lake Street']
    ];
    return ListView.builder(
      itemBuilder: (context, index) {
        return HospitalTile(hospital: hospitalList[index]);
      },
      itemCount: hospitalList.length,
    );
  }
}

class HospitalTile extends StatelessWidget {
  const HospitalTile({super.key, required this.hospital});
  final List hospital;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/hospital.jpg'),
        ),
        title: Text(hospital[0]),
        subtitle: Text('${hospital[2]} | Distance: ${hospital[1]} KM'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.directions_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined))
          ],
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HospitalProfile(hospital: hospital),
              ));
        },
      ),
    );
  }
}
