import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/whatsApp_UI_aHomePage.dart';

class WhatsappUiSplashscreen extends StatefulWidget {
  const WhatsappUiSplashscreen({super.key});

  @override
  State<WhatsappUiSplashscreen> createState() => _WhatsappUiSplashscreenState();
}

class _WhatsappUiSplashscreenState extends State<WhatsappUiSplashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()=>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
    TaskWhatsappUI())));
   
   /* WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const TaskWhatsappUI()),
        ),
      );



    
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(), // top spacer

            /// WhatsApp Icon in Center
           const Icon(
  Icons.chat,
  size: 100,
  color: Colors.white,
),

            /// Bottom "from Meta" block
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center, // center align
                  children: const [
                    Text(
                      "from",
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color.fromARGB(213, 255, 255, 255),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Meta",
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
