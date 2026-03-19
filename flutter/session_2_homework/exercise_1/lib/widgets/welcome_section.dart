import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff8160b9),
        borderRadius: BorderRadius.circular(18),
      ),
      width: MediaQuery.sizeOf(context).width * 0.9,

      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello! 👋',
            style: TextStyle(
              color: Color(0xfffefbfe),
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Try your best to build this ui',
            style: TextStyle(
              color: Color(0xffefddfe),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff673ab7),
              borderRadius: BorderRadius.circular(18),
            ),

            child: Center(
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color(0xfffff4f6),
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
