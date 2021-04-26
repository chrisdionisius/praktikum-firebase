import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 32.0),
            margin: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 466.0),
            constraints: BoxConstraints(maxHeight: 200),
            decoration: BoxDecoration(color: Colors.blue)),
        Center(
          child: Container(
            margin: EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 0.0),
            child: FlutterLogo(size: 100),
          ),
        )
      ],
    );
  }
}
