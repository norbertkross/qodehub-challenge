import 'package:flutter/material.dart';


class GiveNewsLoader extends StatefulWidget {
  @override
  _GiveNewsLoaderState createState() => _GiveNewsLoaderState();
}

class _GiveNewsLoaderState extends State<GiveNewsLoader> {
   
  
  @override
  Widget build(BuildContext context) {
    return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    color: Colors.green.withOpacity(.4),      
      child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.black.withOpacity(.8),
      child: Center(
        child: CircularProgressIndicator(),
      ),
  ),
    );
  }
}


