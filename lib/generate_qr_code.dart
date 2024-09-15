import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(title: const Text("QR Code Generator"),backgroundColor: Colors.cyan,),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlController.text.isNotEmpty)
                Container(
                  color: Colors.white,
                  child: QrImageView(data: urlController.text , size: 200,)),
              const SizedBox(height: 50,),
              Container(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextField(
                  controller: urlController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter any Link or Data",
                    hintStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: "Enter Your Data",
                    labelStyle: const TextStyle(color: Colors.white),
                  ) 
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                setState(() {
                  
                });
              }, child: const Text("Generate QR Code",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "Rubik",height: 3),))
            ],
          ),
        ),
      ),
    );
  }
}