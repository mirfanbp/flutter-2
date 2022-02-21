import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  // const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            // biar bisa di scroll vertical
            child: Row(
                // bungkus widget secara vertical
                children: [
                  const SizedBox(
                    // semacam buat ngatur margin/padding
                    height: 50,
                  ),
                  const Text(
                    'Profile Picture',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/primary-peep.png',
                    width: 140,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Irfan Prakoso',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'UX Designer',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Wrap(
                    spacing: 40, // jarak antar image ke samping
                    runSpacing: 40, // jarak antar image ke bawah
                    alignment: WrapAlignment.center,
                    // buat ngatur margin, mirip flexbox css
                    children: [
                      Image.asset(
                        'assets/images/item1.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item2.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item3.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item4.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item5.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/item6.png',
                        width: 80,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 224,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 290,
                                color: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 50,
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Update Photo',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Text(
                                      'You are only able to change\nthe picture profile once',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      width: 224,
                                      height: 56,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, '/home');
                                        },
                                        child: const Text('Continue'),
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          primary: Colors.orange,
                                          onPrimary: Colors.white, // warna text
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: const Text('Update Profile'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        primary: Colors.white,
                        onPrimary: Colors.grey, // warna text
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 76,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
