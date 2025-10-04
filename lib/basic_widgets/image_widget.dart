import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key}); // pakai super parameter

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo_polinema.jpg', // pastikan path sesuai pubspec.yaml
      width: 150,
      height: 150,
      fit: BoxFit.contain,
    );
  }
}
