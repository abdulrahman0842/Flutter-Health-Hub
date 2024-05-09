import 'package:flutter/material.dart';
import 'package:health_hub/pages/hospital_profile.dart';

class HospitalList extends StatelessWidget {
  const HospitalList({super.key});
  @override
  Widget build(BuildContext context) {
    var hospitalList = [
      ['Noor Hospital', 2.5, 'Islampura'],
      ['Al-Aziz Hospital', 3, 'Mominpura'],
      ['Juna Faran Hospital', 4, 'Agra Road'],
      ['New Faran Hospital', 6, 'Daregaon ']
    ];
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HospitalProfile(hospitalName: hospitalList[index]),
                  ));
            },
            child: HospitalCard(hospitalName: hospitalList[index]));
      },
      itemCount: hospitalList.length,
    );
  }
}

class HospitalCard extends StatelessWidget {
  const HospitalCard({super.key, required this.hospitalName});
  final List hospitalName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          // color: Colors.black,
          elevation: 2,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hospital.jpg'),
                  radius: 40,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  '${hospitalName[0]} | ${hospitalName[2]}',
                  style: TextStyle(fontSize: 20),
                ),
                Text('Distance ${hospitalName[1]} KM'),
              ])
            ],
          )),
    );
  }
}
