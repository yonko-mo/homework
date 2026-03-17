import 'package:flutter/material.dart';

void main() {
  runApp(const Exercise1());
}

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              /// Top Banner
              Container(
                height: 160,
                width: double.infinity,
                color: const Color(0xffe4f2fd),
              ),

              const SizedBox(height: 16),

              /// Small box + long box
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 20,
                    color: const Color(0xffe0e0e0),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 20,
                      color: const Color(0xffe0e0e0),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Divider(),

              const SizedBox(height: 20),

              /// Green + Orange Section
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Container(height: 50, color: const Color(0xffa5d6a7)),
                        const SizedBox(height: 8),
                        Container(height: 50, color: const Color(0xffa5d6a7)),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 110,
                            color: const Color(0xffffcc80),
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 110,
                          color: const Color(0xfffff2e0),
                        ),
                        Expanded(
                          child: Container(
                            height: 110,
                            color: const Color(0xffffcc80),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// Purple Section
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: const Color(0xffe1bee8),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Column(
                      children: [
                        Container(height: 40, color: const Color(0xffcf93d9)),
                        Container(height: 16, color: const Color(0xffe1bee8)),
                        Container(height: 40, color: const Color(0xffcf93d9)),
                      ],
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Container(
                      height: 100,
                      color: const Color(0xffe1bee8),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: const Color(0xfff3e5f6),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// Blue Section
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      color: const Color(0xffb2dfdc),
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Container(
                      height: 60,
                      color: const Color(0xff80cbc4),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// Bottom bar
              Container(
                height: 60,
                width: double.infinity,
                color: const Color(0xffe0e0e0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
