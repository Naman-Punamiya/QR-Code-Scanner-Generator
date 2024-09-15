import 'package:flutter/material.dart';
import 'package:qrcode/generate_qr_code.dart';
import 'package:qrcode/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QR Code',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text("QR Code Scanner and Generator"),
        backgroundColor: Colors.amber[300],
      ),body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 175,),
            const SizedBox(
              height: 200,
              child: Image(image: AssetImage("assets/qr-code.png"),color: Colors.white,),
            ),
            const SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ScanQRCode()));
              });
            }, child: const Text("QR Code Scanner",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: "Quicksand",fontWeight: FontWeight.w300,letterSpacing: 1,height: 3,shadows: [Shadow(color: Colors.black,offset: Offset.zero,blurRadius: 4)]),)
            ,),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const GenerateQRCode()));
              });
            }, child: const Text("QR Code Generator",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: "Quicksand",fontWeight: FontWeight.w300,letterSpacing: 1,height: 3,shadows: [Shadow(color: Colors.black,offset: Offset.zero,blurRadius: 4)]),)),
          ]
        ),
      ),
    );
  }
}