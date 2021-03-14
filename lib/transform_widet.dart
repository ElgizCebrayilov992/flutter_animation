import 'package:flutter/material.dart';

class TransFormWidet extends StatefulWidget {
  @override
  _TransFormWidetState createState() => _TransFormWidetState();
}

class _TransFormWidetState extends State<TransFormWidet> {
  var yuxariAsagi = 0.0;
  var sagaSola = 0.0;
  var deger = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("transform"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_up,
                  size: 50,
                ),
                onPressed: () {
                  setState(() {
                    yuxariAsagi--;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 50,
                ),
                onPressed: () {
                  setState(() {
                    yuxariAsagi++;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 50,
                ),
                onPressed: () {
                  setState(() {
                    sagaSola++;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 50,
                ),
                onPressed: () {
                  setState(() {
                    sagaSola--;
                  });
                },
              ),
            ],
          ),
          getSlider(),
          getRotate(),
          SizedBox(
            height: 100,
          ),
          getScale(),
          getTranslate(),
        ],
      ),
    );
  }

  getSlider() {
    return Slider(
      min: 0.0,
      max: 100.0,
      value: deger,
      onChanged: (value) {
        setState(() {
          deger = value;
        });
      },
    );
  }

  Container getRotate() {
    return Container(
      child: Transform.rotate(
        angle: deger,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(deger * 1.0))),
          height: 100,
          width: 100,
        ),
      ),
    );
  }

  getScale() {
    return Container(
      child: Transform.scale(
        scale: deger == 0 ? 1 : deger / 50,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
      ),
    );
  }

  getTranslate() {
    return Container(
      child: Transform.translate(
        offset: Offset(sagaSola * 10, yuxariAsagi * 10),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
      ),
    );
  }
}
