import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class tercera extends StatefulWidget {
  @override
  _terceraState createState() => _terceraState();
}

class _terceraState extends State<tercera> {
  late Soundpool _soundpool;
  late int _soundId;
  bool _isLoaded = false;
  String path1 = 'assets/';
  String path2 = '.wav';


  @override
  void initState() {
    super.initState();
    _initSound();
  }


  void _initSound() async {
    _soundpool = Soundpool();
    _soundId = await _loadSound();
    setState(() {
      _isLoaded = true;
    });
  }
  Future<int> _loadSound() async {
    String random =Random().nextInt(5).toString();
    String path = path1+random+path2;
    final ByteData data = await rootBundle.load(path);
    return await _soundpool.load(data);
  }

  void _playSound() {
    _soundpool.play(_soundId);
  }

  @override
  void dispose() {
    super.dispose();
    _soundpool.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extra"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_isLoaded) {
              _playSound();
            }
          },
          child: Image.asset('assets/1.png'),
        ),
      ),
    );
  }
}
