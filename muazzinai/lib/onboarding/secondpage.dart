import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muazzinai/onboarding/thirdpage.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1208),
      body: SafeArea(
        child: Column(
          // Elementlarni tepadan boshlab terish (markazdan emas)
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            // 1. Rasm (Bo'shliqni kamaytirish uchun fit va height qo'shildi)
            Center(
              child: Image.asset(
                "assets/other/overlay.png",
                height: 300, // Rasmni balandligini nazorat qilish uchun
                fit: BoxFit.contain, // Rasmni o'z ramkasiga sig'dirish
              ),
            ),

            // Rasm va matn orasidagi masofani qo'lda boshqarish
            // Agar masofa juda katta bo'lsa, manfiy qiymat ishlatsa ham bo'ladi:
            Transform.translate(
              offset: const Offset(0, -20), // Matnni 20 piksel tepaga ko'taradi
              child: Text(
                "Sun'iy intellekt bilan\nmuloqot",
                textAlign: TextAlign.center, // Matnni o'rtaga tekislash
                style: GoogleFonts.lexend(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text("AI chatbot yordamida talaffuzingizni real\nvaqtda tekshiring va suhbatlashing.",textAlign: TextAlign.center, style: GoogleFonts.lexend(color: Colors.grey, fontSize: 16),),
            SizedBox(height: 60,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 5),
                  _buildDot(),
                  const SizedBox(width: 5),
                  Container(
                    width: 20,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00E676),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 5),
                  _buildDot(),
                  
                ],
              ),
              const SizedBox(height: 40),
              // 2. Asosiy "Keyingi" tugmasi
              // Siz so'ragan Row dizayni shu yerga joylashtirildi
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00E676),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF00E676).withOpacity(0.4),
                          blurRadius: 25,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage())),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Keyingi',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 26,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot() {
    return Container(
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: Colors.white10,
        shape: BoxShape.circle,
      ),
    );
  }
}