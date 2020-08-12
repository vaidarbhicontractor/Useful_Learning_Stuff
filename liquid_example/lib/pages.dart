import 'package:flutter/material.dart';

final style = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

final Widget assetLogo = Image.asset(
  'asset/Vaidarbhi.png',
);

// Image for second page
final Widget abstractImage = Image.asset(
  'asset/Vaidarbhi.png',
  fit: BoxFit.cover,
);

// First page
Container codemagicPage = Container(
  color: Colors.amberAccent[400],
  child: Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: assetLogo,
      ),
      SizedBox(height: 300),
    ],
  ),
);

// Second page
Container welcomePage = Container(
  color: Colors.deepPurpleAccent,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      abstractImage,
      SizedBox(height: 20),
      Column(
        children: <Widget>[
          Text("Welcome to", style: style),
          Text("LOQUID SWIPE", style: style),
        ],
      ),
    ],
  ),
);
