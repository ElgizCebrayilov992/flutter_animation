import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/transform_widet.dart';

class AnimasiyonWgidetler extends StatefulWidget {
  @override
  _AnimasiyonWgidetlerState createState() => _AnimasiyonWgidetlerState();
}

class _AnimasiyonWgidetlerState extends State<AnimasiyonWgidetler> {
  var _color = Colors.pink;
  double w = 200;
  double h = 200;
  var _ilkCocukAktiv = true;
  var _op = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animasiyon wgidetler"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedContainer(
                height: h,
                width: w,
                duration: Duration(
                  seconds: 2,
                ),
                color: _color,
              ),
              RaisedButton(
                onPressed: () {
                  _animatedContainerAnimasiyonu();
                },
                color: Colors.blue,
                child: Text("AnimatedContainer"),
              ),
              AnimatedCrossFade(
                firstChild: Image.network(
                    "https://azeriqizi.files.wordpress.com/2010/12/deniz111.jpg"),
                secondChild: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/e/e5/Nax%C3%A7%C4%B1van_Muxtar_Respublikas%C4%B1_-_%C5%9Eahbuz_d%C3%B6vlet_tebiet_qoru%C4%9Fu.jpg"),
                crossFadeState: _ilkCocukAktiv
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 2),
              ),
              RaisedButton(
                onPressed: () {
                  _animatedAnimatedCrossFade();
                },
                color: Colors.blue,
                child: Text("AnimatedCrossFade"),
              ),
              AnimatedOpacity(
                opacity: _op,
                duration: Duration(seconds: 2),
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _animatedAnimatedOpacity();
                },
                color: Colors.blue,
                child: Text("AnimatedOpacity"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransFormWidet(),
                      ));
                },
                child: Text("Transform"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _animatedContainerAnimasiyonu() {
    setState(() {
      if (_color == Colors.pink) {
        _color = Colors.amber;
        w = 100;
        h = 100;
      } else {
        _color = Colors.pink;
        w = 200;
        h = 200;
      }
    });
  }

  void _animatedAnimatedCrossFade() {
    setState(() {
      _ilkCocukAktiv = !_ilkCocukAktiv;
    });
  }

  void _animatedAnimatedOpacity() {
    setState(() {
      _op = _op == 1.0 ? 0.0 : 1.0;
    });
  }
}
