import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Student> data = [
    Student(
        name: "Metagorn_Singkhan",
        id: "6439840025",
        color: Colors.blue.shade100,
        image: "../assets/images/Metagorn_Singkhan.jpg"),
    Student(
        name: "Fah Poonpipit",
        id: "6439840026",
        color: Colors.blue.shade100,
        image: "../assets/images/Nantawat_Phaekhwamdee.JPG"),
    Student(
        name: "Natnicha Prompik",
        id: "6439840027",
        color: Colors.orange.shade100,
        image: "../assets/images/NatnichaPrompik.JPG"),
    Student(
        name: "PanuwatThammabut",
        id: "6439840028",
        color: Colors.blue.shade100,
        image: "../assets/images/PanuwatThammabut.jpg"),
    Student(
        name: "ramin_kaiyabut",
        id: "6439840029",
        color: Colors.blue.shade100,
        image: "../assets/images/ramin_kaiyabut.jpg"),
    Student(
        name: "Thanachok_suwan",
        id: "6439840030",
        color: Colors.blue.shade100,
        image: "../assets/images/Thanachok_suwan.jpeg"),
    Student(
        name: "worachit_thonglert",
        id: "6439840031",
        color: Colors.blue.shade100,
        image: "../assets/images/worachit_thonglert.jpg"),
    Student(
        name: "อรปรียา_จันทะโคตร",
        id: "6439840032",
        color: Colors.orange.shade100,
        image: "../assets/images/AHHH.jpg"),
    Student(
        name: "กฤตชวกร ชวลิตกิตติวงศ์",
        id: "6439840033",
        color: Colors.blue.shade100,
        image: "../assets/images/laputa.png"),
    Student(
        name: "ชฎาพร พินิจสัย",
        id: "6439840034",
        color: Colors.orange.shade100,
        image: "../assets/images/EEE.JPG"),
    Student(
        name: "ปฏิพัทธ์ มาตรา",
        id: "6439840035",
        color: Colors.blue.shade100,
        image: "../assets/images/mt.JPG"),
    Student(
        name: "จันทิมา พรมวัง",
        id: "6439840036",
        color: Colors.orange.shade100,
        image: "../assets/images/jtm.JPG"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My CIS"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:
              data.map((student) => studentListItem(student: student)).toList(),
        ),
      ),
    );
  }

  Widget studentListItem({required Student student}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: student.color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              student.image ?? "../assets/images/kkulogo.png",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                student.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(
                student.id,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Student {
  final String name;
  final String id;
  final String? image;
  final Color color;

  Student({
    required this.name,
    required this.id,
    required this.color,
    this.image = "../assets/images/kkulogo.png",
  });
}
