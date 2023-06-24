import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_holy_quran/globals.dart';
import './home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quran Reading',
              style: GoogleFonts.poppins(
                  color: textGreen, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 250,
              child: Text(
                'Jadikan HandphoneMu lebih Bermanfaat',
                style: GoogleFonts.poppins(
                  color: textGray,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset('assets/image/quran-kartun.jpg'),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: box,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Text(
                    'Mulai Sekarang',
                    style: GoogleFonts.poppins(
                      color: textWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
